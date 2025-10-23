import { json } from '@sveltejs/kit';
import pool from '$lib/database.js';

/** @type {import('./$types').RequestHandler} */
export async function GET() {
    try {
        // Get users count
        const [userCount] = await pool.execute('SELECT COUNT(*) as count FROM users');

        // Get courses count
        const [courseCount] = await pool.execute('SELECT COUNT(*) as count FROM courses');

        // Get recent users (last 5)
        const [recentUsers] = await pool.execute(
            'SELECT id, email, first_name, last_name, created_at FROM users ORDER BY created_at DESC LIMIT 5'
        );

        // Get database info
        const [dbInfo] = await pool.execute('SELECT DATABASE() as database_name');

        return json({
            success: true,
            data: {
                database: dbInfo[0]?.database_name,
                statistics: {
                    users: userCount[0]?.count || 0,
                    courses: courseCount[0]?.count || 0
                },
                recent_users: recentUsers
            },
            message: 'API information retrieved successfully'
        });
    } catch (error) {
        console.error('Database error:', error);

        return json(
            {
                success: false,
                error: 'Failed to retrieve API information',
                message: 'Database connection error'
            },
            { status: 500 }
        );
    }
}