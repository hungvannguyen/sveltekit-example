import type { Actions } from './$types';
import { fail, redirect } from '@sveltejs/kit';
import pool from '$lib/database.js';
import bcrypt from 'bcrypt';
import { logger } from '$lib/logger.js';

export const actions: Actions = {
	create: async ({ request }) => {
		const formData = await request.formData();

		const email = formData.get('email');
		const password = formData.get('password');
		const confirmPassword = formData.get('confirm-password');

		// Basic validation
		if (!email || !password || !confirmPassword) {
			return fail(400, { error: 'All fields are required.' });
		}

		if (password !== confirmPassword) {
			return fail(400, { error: 'Passwords do not match.' });
		}

		try {
			// Check if email exists
			const [exists_email] = await pool.execute('SELECT id FROM users WHERE email = ?', [email]);

			if (Array.isArray(exists_email) && exists_email.length > 0) {
				logger.warn('Signup attempt with existing email');
				return fail(400, { error: 'Email already in use.' });
			}

			// Hash password and create user
			const hashed_password = await bcrypt.hash(password.toString(), 10);

			await pool.execute('INSERT INTO users (email, password_hash) VALUES (?, ?)', [
				email,
				hashed_password
			]);

			logger.info('User created successfully');

			// Redirect to login page after successful signup
			throw redirect(303, '/login');
		} catch (error) {
			// Check if it's a redirect (which is expected)
			if (error && typeof error === 'object' && 'status' in error && 'location' in error) {
				// This is a redirect, re-throw it
				throw error;
			}

			// This is a real error, log it
			const err = error as Error;
			logger.error(`Database error during signup: ${err?.message || 'Unknown error'}`);
			return fail(500, { error: 'Internal server error. Please try again.' });
		}
	}
};
