import mysql from 'mysql2/promise';
import { DB_HOST, DB_PORT, DB_NAME, DB_USER, DB_PASSWORD } from '$env/static/private';

// Create connection pool for better performance
const pool = mysql.createPool({
    host: DB_HOST || 'localhost',
    port: parseInt(DB_PORT || '3307'),
    database: DB_NAME || 'firebits_course',
    user: DB_USER || 'root',
    password: DB_PASSWORD || 'root',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    acquireTimeout: 60000,
    timeout: 60000
});

export default pool;