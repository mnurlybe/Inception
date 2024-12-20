CREATE DATABASE wordpress;
CREATE USER 'user_db'@'%' IDENTIFIED by 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user_db'@'%';
FLUSH PRIVILEGES;