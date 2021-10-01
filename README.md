# docker

Common place to have created Dockerfiles and other Docker related work.

How to setup Pentaho server with Postgres repo on your Docker host VM:
1. Create dockerfiles folder under /home/devuser.
2. Under dockerfiles folder copy docker-compose-pgsql.yml & rename it to docker-compose.yml.
3. Under dockerfiles folder copy server_dockerfile_pgsql file.
4. Under dockerfiles folder create script folder and copy pgsql.sh file.
5. Under dockerfiles -> script folder run - chmod +x pgsql.sh command.
6. Under dockerfile folder run following command:

   docker build -t pentaho-server -f server_dockerfile_pgsql --build-arg VERSION=9.2.0.0 --build-arg DISTNO=290 .
7. Under dockerfile folder run following command:

   docker-compose up
8. Server will be up and running now.
9. Under dockerfiles folder run following command to stop the server:

   docker-compose down -v

Note: In step4 you can give desired VERSION (e.g. 8.3.0.0, 9.2.0.0 or 9.3.0.0) & desired DISTNO (build no). 