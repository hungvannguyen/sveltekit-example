import pool from '$lib/database';

interface User {
	id: number;
	avatar?: string;
	email: string;
	first_name?: string;
	last_name?: string;
	job?: string;
	phone?: string;
	company?: string;
	learn_time?: string;
	average_score?: number;
	purchased_courses?: number;
	course_completed?: number;
	role?: number;
	email_verified_at?: string;
	created_at?: string;
}

export async function load({ locals }) {
	if (!locals.user) {
		return {
			member: null
		};
	}

	// Lấy thông tin user đầy đủ từ database
	const [users] = await pool.execute(
		'SELECT id, avatar, email, first_name, last_name, job, phone, company, learn_time, average_score, purchased_courses, course_completed, role, email_verified_at, created_at FROM users WHERE id = ?',
		[locals.user.id]
	);

	// Lấy thông tin về khoá học của user
	const [coursesResult] = await pool.execute(
		'SELECT * FROM user_course JOIN courses ON courses.id = user_course.course_id WHERE user_course.user_id = ?',
		[locals.user.id]
	);

	const [certificateResult] = await pool.execute('SELECT * FROM certificates WHERE user_id = ?', [
		locals.user.id
	]);

	// Cast type để TypeScript hiểu
	const member = Array.isArray(users) && users.length > 0 ? (users[0] as User) : null;
	const courses = Array.isArray(coursesResult) ? coursesResult : [];
	const certificates = Array.isArray(certificateResult) ? certificateResult : [];

	return {
		member,
		courses,
		certificates
	};
}
