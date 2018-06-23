#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a shared role to read & write general datasets into postgres
echo "Creating database role: shared"
$POSTGRES <<-EOSQL
CREATE USER shared WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$SHARED_PASSWORD';
EOSQL
