// Handle user sessions, authentication, etc.
import type { Handle } from '@sveltejs/kit';
import { parse } from 'cookie';
import pool from '$lib/database.js';

export const handle: Handle = async ({ event, resolve }) => {
	// Parse cookies from the request
	const cookies = parse(event.request.headers.get('cookie') || '');
	const sessionId = cookies.session_id;

	if (sessionId) {
		const [rows] = await pool.execute('SELECT id, email FROM users WHERE session_id = ?', [
			sessionId
		]);

		if (Array.isArray(rows) && rows.length > 0) {
			event.locals.user = rows[0];
		}
	}

	const response = await resolve(event);
	return response;
};
