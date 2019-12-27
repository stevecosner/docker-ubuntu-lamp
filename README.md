# docker-ubuntu-lamp
# Create a Docker Ubuntu container with LAMP stack and test web, php and mysql connections.

# Clone repo and build container.
docker build -t ubuntu-docker-lamp-1 .

# Run your first container.
docker run -itd ubuntu-docker-lamp-1

# Attach to container.  In this case gifted_rhodes is the container name.
# Find container name

docker ps -a

docker attach gifted_rhodes

# Start apache and my sql

service apache2 start

service mysql start

# Update database with user1 and pass1

mysql

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'pass1';

GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost';

# Open browser to 172.17.0.2 or whatever docker container address is.
