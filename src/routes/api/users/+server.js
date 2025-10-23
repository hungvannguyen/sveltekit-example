import { json } from '@sveltejs/kit';
import pool from '$lib/database.js';

/** @type {import('./$types').RequestHandler} */
export async function GET() {
    try {
        // Execute query to get all users
        const [rows] = await pool.execute(
            'SELECT id, email, first_name, last_name, created_at, updated_at FROM users ORDER BY created_at DESC'
        );

        // Return users data
        return json({
            success: true,
            data: rows,
            message: 'Users retrieved successfully'
        });
    } catch (error) {
        console.error('Database error:', error);

        return json(
            {
                success: false,
                error: 'Failed to retrieve users',
                message: error.message
            },
            { status: 500 }
        );
    }
}

/** @type {import('./$types').RequestHandler} */
export async function POST({ request }) {
    try {
        const { email, password, first_name, last_name } = await request.json();

        // Basic validation
        if (!email || !password) {
            return json(
                {
                    success: false,
                    error: 'Email and password are required'
                },
                { status: 400 }
            );
        }

        // Insert new user
        const [result] = await pool.execute(
            'INSERT INTO users (email, password_hash, first_name, last_name) VALUES (?, ?, ?, ?)',
            [email, password, first_name || null, last_name || null]
        );

        // Get the created user
        const [newUser] = await pool.execute(
            'SELECT id, email, first_name, last_name, created_at FROM users WHERE id = ?',
            [result.insertId]
        );

        return json(
            {
                success: true,
                data: newUser[0],
                message: 'User created successfully'
            },
            { status: 201 }
        );
    } catch (error) {
        console.error('Database error:', error);

        // Handle duplicate email error
        if (error.code === 'ER_DUP_ENTRY') {
            return json(
                {
                    success: false,
                    error: 'Email already exists'
                },
                { status: 409 }
            );
        }

        return json(
            {
                success: false,
                error: 'Failed to create user',
                message: error.message
            },
            { status: 500 }
        );
    }
}