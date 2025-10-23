import { appendFileSync, existsSync, mkdirSync } from 'fs';
import { join } from 'path';

const LOG_DIR = 'logs';
const LOG_FILE = join(LOG_DIR, 'app.log');

// Tạo thư mục logs nếu chưa tồn tại
if (!existsSync(LOG_DIR)) {
    mkdirSync(LOG_DIR, { recursive: true });
}

class Logger {
    formatLog(level, message, data = null) {
        const timestamp = new Date().toISOString();
        const dataStr = data ? ` | Data: ${JSON.stringify(data, null, 2)}` : '';
        return `[${timestamp}] [${level}] ${message}${dataStr}\n`;
    }

    writeLog(level, message, data = null) {
        const logLine = this.formatLog(level, message, data);

        try {
            appendFileSync(LOG_FILE, logLine);
        } catch (error) {
            // Fallback to console if file writing fails
            console.error('Failed to write to log file:', error);
            console.log(logLine);
        }
    }

    info(message, data = null) {
        this.writeLog('INFO', message, data);
    }

    error(message, data = null) {
        this.writeLog('ERROR', message, data);
    }

    warn(message, data = null) {
        this.writeLog('WARN', message, data);
    }

    debug(message, data = null) {
        this.writeLog('DEBUG', message, data);
    }
}

export const logger = new Logger();