all: create_dirs up

create_dirs:
	sudo mkdir -p /home/btanir/data/mariadb_data
	sudo mkdir -p /home/btanir/data/wordpress_data

.PHONY: up
up:
	sudo docker-compose -f ./srcs/docker-compose.yml up --build -d

down:
	sudo docker-compose -f ./srcs/docker-compose.yml down

status:
	sudo docker ps