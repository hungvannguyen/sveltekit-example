import type { Actions } from './$types';
import { fail, redirect } from '@sveltejs/kit';
import pool from '$lib/database.js';
import bcrypt from 'bcrypt';
import { logger } from '$lib/logger.js';

export const actions: Actions = {
	login: async ({ request }) => {
		const formData = await request.formData();

		const email = formData.get('email');
		const password = formData.get('password');

		// Basic validation
		if (!email || !password) {
			return fail(400, { error: 'All fields are required.' });
		}

		try {
			// Check if user exists
			const [users] = await pool.execute(
				'SELECT id, email, password_hash FROM users WHERE email = ?',
				[email]
			);

			// Check if user array is empty
			if (!Array.isArray(users) || users.length === 0) {
				logger.warn('Login attempt with non-existent email');
				return fail(400, { error: 'Invalid email or password.' });
			}

			const user = users[0] as { id: number; email: string; password_hash: string };

			// Verify password
			const isValid = await bcrypt.compare(password.toString(), user.password_hash);
			if (!isValid) {
				logger.warn('Login attempt with incorrect password');
				return fail(400, { error: 'Invalid email or password.' });
			}

			logger.info('User logged in successfully');

			// Redirect to home page after successful login
			throw redirect(303, '/');
		} catch (error) {
			// Check if it's a redirect (which is expected)
			if (error && typeof error === 'object' && 'status' in error && 'location' in error) {
				// This is a redirect, re-throw it
				throw error;
			}

			// This is a real error, log it
			const err = error as Error;
			logger.error(`Database error during login: ${err?.message || 'Unknown error'}`);
			return fail(500, { error: 'Internal server error. Please try again.' });
		}
	}
};
