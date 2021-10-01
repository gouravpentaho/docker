#!/bin/bash

psql -U postgres -c "\i /data/create_quartz_postgresql.sql"
psql -U postgres -c "\i /data/create_repository_postgresql.sql"
psql -U postgres -c "\i /data/create_jcr_postgresql.sql"
