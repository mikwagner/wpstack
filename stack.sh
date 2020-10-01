sudo yum update;
sudo yum install docker;

sudo docker network create mysqlnet;
sudo dockerd &;

sudo docker stop wi-wordpress wi-mysql;
sudo docker rm wi-wordpress wi-mysql;
sudo docker run --name wi-mysql --net=mysqlnet -p 3306:3306 -v ~/docker-data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=wi-secret-pw -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=wi-secret-pw -d mysql:5.7;
sudo docker run --name wi-wordpress --net=mysqlnet -v ~/docker-data/wordpress:/var/www/html -e WORDPRESS_DB_HOST=wi-mysql:3306 -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=wi-secret-pw -e WORDPRESS_DB_NAME=wordpress -p 80:80 -d wordpress;

sudo docker ps;
