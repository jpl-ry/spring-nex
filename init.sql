-- init.sql

-- Change root authentication plugin
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Root@123';

-- Optional: expose root access from any host (useful in dev)
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Root@123';

-- Create a dedicated Spring Boot user
CREATE USER 'springuser'@'%' IDENTIFIED BY 'springpass';
GRANT ALL PRIVILEGES ON employee_details.* TO 'springuser'@'%';
FLUSH PRIVILEGES;

