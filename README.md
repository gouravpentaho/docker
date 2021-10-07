# docker

Common place to have created Dockerfiles and other Docker related work.

How to setup Pentaho server with Postgres repo on your Docker host VM:
1. Create 'dockerfiles' folder under /home/devuser.
2. Under dockerfiles folder copy docker-compose-pgsql.yml & rename it to docker-compose.yml.
3. Under dockerfiles folder copy 'server_dockerfile_pgsql' Docker file.
4. Under dockerfiles folder copy 'pgsql' folder.
5. Under dockerfiles -> script folder run - chmod +x pgsql.sh command. Just to ensure that it has execute permission.
6. Under dockerfile folder run following command:

   docker build -t pentaho-server -f server_dockerfile_pgsql --build-arg PATH_VERSION=9.3-QAT --build-arg VERSION=9.3.0.0 --build-arg DISTNO=212 .
7. Under dockerfile folder run following command:

   docker-compose up
8. Server will be up and running now.
9. Under dockerfiles folder run following command to stop the server:

   docker-compose down -v

Note: In step4 you can give desired PATH_VERSION (e.g. 9.2-QAT or 9.3-QAT), VERSION (e.g. 9.2.0.0 or 9.3.0.0) & DISTNO (build no). 

Server configuration with Postgres repo:
- OpenJDK 8
- Postgres Server version - 9.5

Server configuration with MySQL repo:
- OpenJDK 8
- MySQL - 8.0.26