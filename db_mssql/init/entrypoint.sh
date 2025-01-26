#!/bin/bash

# Start SQL Server
/opt/mssql/bin/sqlservr &

# Wait for SQL Server to start
until /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -d master -Q "SELECT 1;" -C &> /dev/null
do
    echo "Waiting for SQL Server to start..."
    sleep 1
done
echo "SQL Server is up"

# Run the initialization scripts
for script in /var/opt/mssql/init/*.sql; do
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -d master -C -i "$script"
done

# Wait for SQL Server to exit
wait 