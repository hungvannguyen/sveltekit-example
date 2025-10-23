import { json } from '@sveltejs/kit';
import pool from '$lib/database.js';

/** @type {import('./$types').RequestHandler} */
export async function GET({ params }) {
    try {
        const userId = params.id;

        // Validate user ID
        if (!userId || isNaN(parseInt(userId))) {
            return json(
                {
                    success: false,
                    error: 'Invalid user ID'
                },
                { status: 400 }
            );
        }

        // Execute query to get specific user
        const [rows] = await pool.execute(
            'SELECT id, email, first_name, last_name, created_at, updated_at FROM users WHERE id = ?',
            [userId]
        );

        // Check if user exists
        if (rows.length === 0) {
            return json(
                {
                    success: false,
                    error: 'User not found'
                },
                { status: 404 }
            );
        }

        // Return user data
        return json({
            success: true,
            data: rows[0],
            message: 'User retrieved successfully'
        });
    } catch (error) {
        console.error('Database error:', error);

        return json(
            {
                success: false,
                error: 'Failed to retrieve user'
            },
            { status: 500 }
        );
    }
}

/** @type {import('./$types').RequestHandler} */
export async function PUT({ params, request }) {
    try {
        const userId = params.id;
        const { email, first_name, last_name } = await request.json();

        // Validate user ID
        if (!userId || isNaN(parseInt(userId))) {
            return json(
                {
                    success: false,
                    error: 'Invalid user ID'
                },
                { status: 400 }
            );
        }

        // Check if user exists
        const [existingUser] = await pool.execute(
            'SELECT id FROM users WHERE id = ?',
            [userId]
        );

        if (existingUser.length === 0) {
            return json(
                {
                    success: false,
                    error: 'User not found'
                },
                { status: 404 }
            );
        }

        // Update user
        await pool.execute(
            'UPDATE users SET email = ?, first_name = ?, last_name = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?',
            [email, first_name, last_name, userId]
        );

        // Get updated user
        const [updatedUser] = await pool.execute(
            'SELECT id, email, first_name, last_name, created_at, updated_at FROM users WHERE id = ?',
            [userId]
        );

        return json({
            success: true,
            data: updatedUser[0],
            message: 'User updated successfully'
        });
    } catch (error) {
        console.error('Database error:', error);

        return json(
            {
                success: false,
                error: 'Failed to update user'
            },
            { status: 500 }
        );
    }
}

/** @type {import('./$types').RequestHandler} */
export async function DELETE({ params }) {
    try {
        const userId = params.id;

        // Validate user ID
        if (!userId || isNaN(parseInt(userId))) {
            return json(
                {
                    success: false,
                    error: 'Invalid user ID'
                },
                { status: 400 }
            );
        }

        // Check if user exists
        const [existingUser] = await pool.execute(
            'SELECT id FROM users WHERE id = ?',
            [userId]
        );

        if (existingUser.length === 0) {
            return json(
                {
                    success: false,
                    error: 'User not found'
                },
                { status: 404 }
            );
        }

        // Delete user
        await pool.execute('DELETE FROM users WHERE id = ?', [userId]);

        return json({
            success: true,
            message: 'User deleted successfully'
        });
    } catch (error) {
        console.error('Database error:', error);

        return json(
            {
                success: false,
                error: 'Failed to delete user'
            },
            { status: 500 }
        );
    }
}