FROM alpine:3.16

# Install mariadb
RUN apk update && apk add --no-cache \
    mariadb \
    mariadb-client && \
    mkdir -p /run/mysqld && \
    chown -R mysql:mysql /run/mysqld && \
    mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Copy custom configuration if needed
# COPY mariadb-server.cnf /etc/my.cnf.d/.
# COPY init.sql /etc/mysql/init.sql

# Set proper permissions
RUN chown -R mysql:mysql /var/lib/mysql

# Expose MariaDB port
EXPOSE 3306

# Start MariaDB with mysqld_safe
CMD ["mysqld_safe"]