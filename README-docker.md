# MySQL Docker Setup

This project includes a Docker Compose configuration to run MySQL database locally.

## Quick Start

1. **Start the database:**

   ```bash
   docker-compose up -d
   ```

2. **Stop the database:**

   ```bash
   docker-compose down
   ```

3. **View logs:**
   ```bash
   docker-compose logs mysql
   ```

## Services

### MySQL Database

- **Container**: `sveltekit_mysql`
- **Port**: `3306`
- **Database**: `sveltekit_db`
- **User**: `sveltekit_user`
- **Password**: `sveltekit_password`
- **Root Password**: `rootpassword`

### phpMyAdmin (Web Interface)

- **Container**: `sveltekit_phpmyadmin`
- **URL**: http://localhost:8080
- **Username**: `root` or `sveltekit_user`
- **Password**: `rootpassword` or `sveltekit_password`

## Environment Variables

Copy `.env.example` to `.env` and update values if needed:

```bash
cp .env.example .env
```

## Database Schema

The initial database schema includes:

- **users**: User account information
- **courses**: Course catalog
- **user_courses**: User course enrollments

## Useful Commands

```bash
# Start database in background
docker-compose up -d mysql

# Start with phpMyAdmin
docker-compose up -d

# View database logs
docker-compose logs -f mysql

# Access MySQL CLI
docker-compose exec mysql mysql -u root -p

# Reset database (removes all data)
docker-compose down -v
docker-compose up -d

# Backup database
docker-compose exec mysql mysqldump -u root -p sveltekit_db > backup.sql

# Restore database
docker-compose exec -i mysql mysql -u root -p sveltekit_db < backup.sql
```

## Connection Details

For your SvelteKit application, use these connection details:

```javascript
const dbConfig = {
	host: 'localhost',
	port: 3306,
	database: 'sveltekit_db',
	user: 'sveltekit_user',
	password: 'sveltekit_password'
};
```

Or use the DATABASE_URL:

```
mysql://sveltekit_user:sveltekit_password@localhost:3306/sveltekit_db
```
