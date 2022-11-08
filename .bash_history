ip add show
exit
sudo apt install docker
apt
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
ls /etc/apt/keyrings
cat /etc/apt/keyrings
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
cat /etc/apt/sources.list.d/docker.lsit
cat /etc/apt/sources.list.d/docker.list
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl status docker
docker ps
ls -l /var/run/docker
ls -l /var/run/docker.sock
docker ps
systemctl status docker
sudo usermod -aG docker $USER
exit
ip add show
tty
id -a
docker ps
docker images
ls
cd trusted.gpg.d/
ls
docker run helloworld
docker run hello-world
docker images
docker image ls
docker image pull docker.io/library/hello-world
docker image ls
docker image pull docker.io/library/httpd
docker image pull httpd
docker image pull docker.io/allpie9999/myseb:lateset
docker image pull docker.io/allpie9999/myweb:lateset
cat
cat /etc/hostname
cat < /etc/hostname
echo "hello" > abc
cat abc
cat 0< /etc/hostname
echo "hello" 1> abc
cat abc
echo "hello" 2> abc
abc
cat abc
ls -J
ls -J > abc
cat abc
ls -J 1> abc
ls -J 2> abc
cat abc
ls -l /dev/fd/
echo "hello" 1> /dev/fd/1
tty
echo "hello" 1> /dev/pts/1
tty
echo "world" 1> /dev/pts/1
docker image pull ubuntu:focal
docker image inspect ubuntu:focal
docker image inspect ubuntu:hello-world
docker image save hello-world -o hello.tar
file hello.tar
ls
mkdir hello
mv hello.tar
mv hello.tar hello
ls
cd hello/
tar xf hello.tar
ls
cd c28b9c2faac407005d4d657e49f372fb3579a47dd4e4d87d13e29edd1c912d5c/
ls
tar xf layer.tar
ls
cd ..
ls
rm -rf hello/
docker image inspect hello-world
dockerimage pull centos:7
docker image pull centos:7
tty
docker run --help
docker run centos:7
docker ps -a
docker run centos:7 ls
docker run centos:7 ls -J
docker run centos:7 bash
docker run -i centos:7
docekr run --help
docker run --help
docker run -it centos:7
docker --help
]docker image pull python
docker image pull python
docker image ls
docker image python
docker image inspect python
docker run -it python
docker run -it centos:7
sudo find / -name *libc*so
docker image pull httpd:2.4
docker image pull httpd:2.4-alpine
docker image ls
docker image pull nginx:1.22
docker image pull nginx:1.22-alpine
docker image ls
docker run --help
docker run -d httpd
docker ps
docker rum 72
docker ps
docker ps -a
docker container prune
docker ps -a
docker run httpd
history
exit
docker ps -a
docker ps
docker run -d httpd
docker log e26
docker log e85
docker log 8e
docker log 8e859
docker logs 8e
sudo ls /var/log/docker
sudo -i
docker logs 27
docker logs 8e8
docker run -itd httpd
docker attach 46
docker ps -a
history
exit
docker pull wordpress
docker pull mysql
docker pull php
docker run --name some-wordpress --network some-network -d wordpress
docker run --name some-wordpress -p 8080:80 -d wordpress
docker run --name some-wordpress -e WORDPRESS_DB_PASSWORD_FILE=/run/secretes/mysql-root ... -d wordpress:tag
docker run --name some-wordpress -e WORDPRESS_DB_PASSWORD_FILE=/run/secretes/mysql-root -d wordpress
docker pull mariadb
docker run --detach --name some-mariadb --env MARIADB_USER=example-user --env MARIADB_PASSWORD=my_cool_secret --env MARIADB_ROOT_PASSWORD=my-secret-pw mariadb:latest
docker run -it --network some-network --rm mariadb mariadb -hsome-mariadb -uexample-user -p
docker exec -it some-mariadb bash
docker logs some-mariadb
docker run --name some-mariadb -v /my/custom:/etc/mysql/conf.d --rm maraidb:latest my_print_defaults --mysqld
docker run --name some-mariadb -e MARIADB_ROOT_PASSWORD=my-secret-pw -d mariadb:latest --port 3808
docker run --name some-mysql -e MARIADB_ROOT_PASSWORD_FILE=/run/secrets/mysql-root -d mariadb:latest
mkdir -r /my/own/datadir
mkdir /my/own/datadir
sudo mkdir /my
mkdir-p/my/own
mkdir -p /my/own/datadir
sudo rmdir /my
mkdir -p /my/own/datadir
sudo mkdir -p /my/own/datadir
docker run --name some-mariadb: -v /my/own/datadir:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secrets-pw -d maraidb:latest
docker run --name some-mariadb: -v /my/own/datadir:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secrets-pw -d mariadb:latest
docker run --name some-mariadb: -v /my/own/datadir:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secret-pw -d mariadb:latest
docker run --name some-mariadb -v /my/own/datadir:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=my-secret-pw -d mariadb:latest
docker exec some-mariadb sh -c 'exec mariadb-dump --all-databases -uroot -p "$MARIADB_ROOT_PASSWORD"' > /some/path/on/your/host/all-databases.sql
docker exec -i some-mariadbsh -c 'exec mariadb -uroot -p "$MARIADB_ROOT_PASSWORD"' < /some/path/on/your/host/all-databases.sql
docker volume create some-mariadb-socket
docker run --name some-mariadb -v /my/own/datadir:/var/lib/mysql -v some-mariadb-socket:/var/run/mysqld -e MARIADB_MYSQL_LOCALHOST_USER=1 -e MARIADB_MYSQL_LOCALHOST_GRANTS="RELOAD, PROCESS, LOCK TABLES, BINLOG MONITOR" -e MARIADB_ROOT_PASSWORD=my-secret-pw -d mariadb:latest
docker volume create some-mariadb-backup
docker run --rm some-mariadb-backup -v some-mariadb-backup:/backup mariadb:latest chown mysql: /backup
docker run --user mysql -v some-mariadb-socket:/var/run/mysqld -v some-mariadb-backup:/backup -v /my/own/datadir:/var/lib/mysql --rm mariadb:latest mariabackup --backup --target-dir=/backup
docker run --user mysql --rm -v some-mariadb-backup:/backup mariadb:latest mariabackup --prepare --target-dir=/backup
docker run --user mysql --rm -v /my/new/datadir:/var/lib/mysql -v some-mariadb-backup:/backup mariadb:latest mariabackup --copy-back --target-dir=/backup
docker run --name some-mariadb -v /my/new/datadir:/var/lib/mysql -d mariadb:latest
code passwordreset.sql
code Dockerfile
docker build -t my-php-app .
docker run -it --rm --name my-running-app my-php-app
docker pull php
vi Dockerfile
docker build -t my-php-all .
docker build -t my-php-app .
docker run -it --rm --name my-running-app my-php-app
docker run -d --name wp-db -v wp-db-vol:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=P@ssw0rd -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wpadmin -e MYSQL_PASSWORD=P@ssw0rd mysql:5.7
docker run -d --name wp-web -v wp-web-vol:/var/www/html --link wp-db:wp-mysql -e WORDPRESS_DB_HOST=wp-mysql -e WORDPRESS_DB_USER=wpadmin -e WORDPRESS_DB_NAME=wordpress -e WORDPRESS_DB_PASSWORD=P@ssw0rd -p 80:80 wordpress:latest
docker ps
docker volume ls
ip ad
ls
cd example-hello/
ls
cd python/
ls
cd django/
ls
cd hello/
ls
cd ..
ls
sudo apt install python3-venv
cd ~
ls
mkdir project_a
cd project_a/
python3 -m venv venv
ls venv/
cd venv/
ls
cd bin/
ls
cd ..
cd lib
ls
cd python3.8/
ls
cd site-packages/
ls
cd ..
cd..
cd ..
ls
cat venv/bin/activate
source venv/bin/activate
echo $PYTHONHOME
env
env | grep OYTHON
env | grep PYTHON
export | grep -i python
set | grep -i python
python
ls venv/bin/
pip3 list
pip list
pip install flask
pip list
deactivate
activate
pip3
mkdir project_b
cd ~
mkdir project_b
cd project_b/
python3 -m venv venv
source venv/bin/activate
pip list
deactivate
cd ../
source project_a/venv/bin/activate
pip3 list
deactivate
ls
cd project_a
rm -rf venv
ls
rm project_b
python3 -m venv projecta
cd ../
cd project_b/
python3 -m venv projectb
cd ..
source project_a/projecta/bin/activate
deactivate
source project_b/projectb/bin/activate
exit
deactivate
sudo apt install python3-pip
pip3 list
pip3 fereze > a
pip3 freeze > a
cat a
rm a
de example-hello/python/django/
ls
cd example-hello/python/django/
ls
rm -rf venv
ls
cat README.md 
docker image inspect python3
cat requirements.txt 
cat README.md 
docker cp
ls
cat R
cat requirements.txt 
cat R
cat README.md 
vi Dockerfile
docker run -it python bash
docker image inspect python
docker image inspect httpd
docker run -it httpd bash
vi Dockerfile
docker 
docker build -t myweb
docker build -t myweb .
docker run -it python
cat requirements.txt
vi Do
vi Dockerfile
docker run
docker run -d -p 8000:8000 myweb
vi Dockerfile
docker build -t myweb .
cat Dockerfile 
cat requirements.txt 
cat R
cat README.md 
vi Dockerfile
docker build -t myweb .
docker run -itd -p 80:8000 myweb
ip ad
docker ps
docker run -itd -p 8000:8000 myweb
docker p
cat Dockerfile 
ls
vi Dockerfile 
docker build -t myweb .
docker run -itd -p 8000:8000 myweb
docker image ls | grep python
docker run -it python:3.8 bash
docker image pull python:3.8-slim
docker image ls | grep python
docker image pull python:3.8-alpine
docker image ls | grep python
du -sh .
ls
vi Dockerfile
ls
docker run -it myweb bash
ls
vi .dockerignore
cat Dockerfile
cat .dockerignore
vi Dockerfile 
cat .dockerignore 
docker image build -t myweb .
docker run -it myweb bash
vi Dockerfile
cat .dockerignore 
cat Dockerfile
docker image inspect myweb
vi Dockerfile
docker run -it myweb bash
docker image build -t myweb .
docker run -it myweb bash
docker run -d httpd
doekr ps
docker ps
docker run -d -p 8888:8888 httpd
docker ps
docker run -d -p 8080:80 httpd
docker ps
docker run -d -P httpd
docker ps
docker run -itd -P centos:7
docker ps
docker image inspect mysql:7
docker image inspect mysql:5.9
docker run -d -P -e MYSQL_ROOT_POASSWORD=1234 myslq:5.7
docker run -d -P -e MYSQL_ROOT_POASSWORD=1234 myslq=5.7
docker run --help
vi Dockerfile 
cat Dockerfile 
vi Dockerfile 
docker image build -t myweb:exec
docker image build -t myweb:exec .
vi Dockerfile 
docker image list | grep myweb
docker image inspect myweb:exe
docker image inspect myweb:exec
docker image inspect myweb:exec | grep command
docker image inspect myweb:exec | grep -i cmd
docker image inspect myweb:exec | grep -A 5 -i cmd
docker image inspect myweb:exec | grep -B 5 -i cmd
docker image inspect myweb:exec | grep -A 5 -i cmd
docker image inspect myweb:shell | grep -A 5 -i cmd
docker image build -t myweb:shell .
ls
ps -ef 
exec ls
alias
alias naljja=date
alias
l
rm project_a project_b
rm -f project_a/ project_b/
rm -r project_a/ project_b/
ls
l
la
ll
alias
A=100
eco $A
eCHO $a
eCHO $A
echo $A
VI A.SH
vi a.sh
cat a.sh
sh a.sh
sh ls
sh -c ls
cd example-hello/python/django/
cat Dockerfile 
docker run -d -n exec myweb:exec
docker run -d --name exec myweb:exec
docker run -d --name shell myweb:shell
docker ps
docker stop shell
docker ps
docker ps -a
docker stop exec
docker container inspect exec
docker ps -a
ls
echo $?
ls
echo $?
ls -H
ls -J
echo $?
docker ps -a
kill -l
sleep 100
ps -ef | grep sleep
slep 100 &
kill -2 %1
kill-l
docker ps -a
vi Dockerfile 
docker login
cd ~
cd .docker/
ls
cat config.json
cd
ls -a
ls -l
docker login
clear
docker image ls | grep myweb
docker image tag
docker image tag myweb -y allpie9999/myweb
docker image tag myweb -y allpie9999/mydjango
docker image tag myweb allpie9999/mydjango
docker image ls | grep mydjango
docker push allpie9999/mysdjango
docker push allpie9999/mydjango
docker logout
cat .docker/config.json
docker image pull allpie9999/mydjango
docker tag allpie9999/mydjango
docker tag allpie9999/mydjango allpie9999/mydjango:v1
docker login
docker tag allpie9999/mydjango allpie9999/mydjango:v1
docker pull allpie9999/mydjango:V1
docker pull allpie9999/mydjango:v1
docker image ls
docker image pull allpie9999/mydjango
docker logout
docker login
`









































































































exit
history
exit
docker run -it -e A=100 centos:7
docker run 49
docker image run -d mysql:5.7
docker run -d mysql:5.7
docker ps -a
docker logs 83
docker logs 8371
docker logs 71
docker logs c71
docker image ls
docker ps -=a
docker ps -a
docker rm -f c71
docker run -d -e MYSQL_ROOT_PASSWORD=1234 mysql:5.7
docker ps -a
docker image inspect
docker image inspect mysql:5.7
docker run --help
docker image inspect centos:7
docker run -itd centos:7
docker ps
docker run -itd centos:7 ls
docker run --help
docker image inspect mysql:5.7
docker exec -it 0c bash
docker ps -a
docker ps
docker exec -it a9 bash
docker volume ls
docekr volume ls
docker prune 
docker ps -a
docker run -d -e MYSQL_ROOT_PASSWORD=1234 mysql:5.7
docker ps 
docker volume ls
docker run -itd centos:7
docker ps -a
docker volume ls
docker run -d httpd:2.4
docker ps
docker volume ls
docker image inspect mysql:5.7
docker image inspect httpd:2.4
docker ps -a
docker run -it -v vol1:/abc centos:7
docker volume ls
docker volume inspect vol1
sudo touch /var/lib/docker/voluems/vol1/_data/xyq
sudo touch /var/lib/docker/voluems/vol1/_data/xyz
sudo touch /var/lib/docker/volumes/vol1/_data/xyz
docker ps
docker ps -a
docker run -it -v vol1:/sessac ubuntu:focal
docker ps
docker voluem ls
docker volume ls
docker container inspect 1c
docker container inspect vol1
docker volume ls
docker volume inspect 
sudo ls /var/lib/docker/voluems/1c0
docker image inspect mysql:5.7
docker run -it wordpress bash
docker ps -a
docker rm -f 8e 8f 277
docker rm -f 46f 972 1d
docker rm -f 9e 5c 120
docker rm -f 5f 00 a9
docker rm -f 0a bc 88
docker ps
docker exec -it 1f bash
docker run -it centos:7
docker run --name con1 -itd centos:7 
docker container inspect c0 
docker container inspect 90
docker ps 
docker run -it --link con1:centos centos:7
sudo apt install -y bridge-utils
brctl show
docker ps
docker rm -f 903 1f0 ta fde
docker ps
brctl show
docker rm -f 4a
docker ps
brctl show
docker ps
docker run image centos:7
docker run -it centos:7
docker run -itd ubuntu:focal
docker attach 422
docker run -it centos:7
sudo iptables -t nat -L -n
docker run -d -p 8080:80 httpd:2.4
docker ps -a
docker ps
sudo iptables -t nat -L -n
docker rm -f 76
docker ps
sudo iptables -t nat -L -n
docker ps -a
docker container prune
docker volume prune
docker ps -a
docker volume ls
cd ~
ls
rm -rf *
ls
https://github.com/c1t1d0s7/example-hello.git
git clone https://github.com/c1t1d0s7/example-hello.git
ls
cd example-hello/python/django/
ls
cd hello/ls
cd hello/
ls
cat maanage.py
ls
cd helloworld/
ls
cat apps.py
cat views.py
cat urls.py
cat views.py
cd ..
cd hello
ls
cd hello
cat settings.py 
ls
cat urls.py 
cd ../..
ls
cat requirements.txt 
ls -a
cat requirements.txt 
sudo apt install python3-venv
python3 -m venv myenv
ls
cat README.md 
LS
ls
cd myenv/
cd lib
ls
cd ..
ls
cd ..
source myenv/bin/activate
python3 list
pip3
pip3 list
cat requirements.txt 
pip3 install -r requirements.txt 
ls
pip3 freeze > a
cat a
pip3 list
ls
rm a
ls
cat README.md 
python3 hello/manage.py runserver
python3 hello/manage.py runserver 0.0.0.0:8000
deactivate
ls
rm -rf myenv
ls
history
cd ~
poweroff
exit
history
cat Dockerfile
ssh kube-contol1
ssh kube-node1
ls
cd vagrant
ls
exit
