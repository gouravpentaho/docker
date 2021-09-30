# docker
Common place to have created Dockerfiles and other Docker related work.

How to setup Pentaho server with Postgres repo on your Docker host VM:
1. Create dockerfiles folder under /home/devuser.
2. Under dockerfiles folder copy docker-compose.yml & Server_Dockerfile files and Script folder.
3. Under dockerfiles -> Script folder run - chmod +x pgsql.sh command.
4. Under dockerfile folder run following command:

   docker build -t pentaho-server -f Server_Dockerfile --build-arg VERSION=9.2.0.0 --build-arg DISTNO=290 .
5. Under dockerfile folder run following command:

   docker-compose up
6. Server will be up and running now.
7. Under dockerfiles folder run following command to stop the server:

   docker-compose down -v

Note: In step4 you can give desired VERSION (e.g. 8.3.0.0, 9.2.0.0 or 9.3.0.0) & desired DISTNO (build no). 
