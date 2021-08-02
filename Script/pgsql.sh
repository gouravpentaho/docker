#!/bin/bash

su postgres

psql -c "\i /data/postgresql/create_quartz_postgresql.sql"
psql -c "\i /data/postgresql/create_repository_postgresql.sql"
psql -c "\i /data/postgresql/create_jcr_postgresql.sql"