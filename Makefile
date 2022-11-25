all :	build
		sudo mkdir -p /home/npinheir/data
		sudo mkdir -p /home/npinheir/data/wordpress
		sudo mkdir -p /home/npinheir/data/database
		sudo chmod 777 /etc/hosts
		sudo echo "127.0.0.1 npinheir.42.fr" >> /etc/hosts
		sudo echo "127.0.0.1 www.npinheir.42.fr" >> /etc/host
		cd srcs && sudo docker-compose up -d
build :
	cd srcs && sudo docker-compose build
clean :
	cd srcs/ && sudo docker-compose down -v --rmi all --remove-orphans
fclean	:	clean
	sudo docker system prune --volumes --all --force
	sudo rm -rf /home/npinheir/data
	sudo docker network prune --force
	echo docker volume rm $(docker volume ls -q)
	sudo docker image prune --force
