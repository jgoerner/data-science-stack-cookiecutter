#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a role for airflow
echo "Creating database role: airflow"
$POSTGRES <<-EOSQL
CREATE USER airflow WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$AIRFLOW_PASSWORD';
EOSQL
