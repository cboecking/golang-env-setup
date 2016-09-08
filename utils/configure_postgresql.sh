#!/bin/bash

sudo apt-get --yes install postgresql postgresql-contrib phppgadmin libaprutil1-dbd-pgsql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '"$DBPASS_SU"';"
sudo -u postgres service postgresql stop

# The following commands update postgresql to listen for all
# connections (not just localhost). Make sure your firewall
# prevents outsiders from connecting to your server.
echo "">>$README
echo "">>$README
echo "PostgreSQL installed.">>$README
echo "The script installed the phppgadmin tool to help you administer your database.">>$README 
echo "SECURITY NOTICE: Make sure your database is protected by a firewall that prevents direct connection from anonymous users.">>$README
sudo sed -i '$ a\host   all     all     0.0.0.0/0       md5' /etc/postgresql/$PGVERSION/main/pg_hba.conf
sudo sed -i 's/local   all             all                                     peer/local   all             all                                     md5/' /etc/postgresql/$PGVERSION/main/pg_hba.conf
sudo sed -i '$ a\listen_addresses = '"'"'*'"'"' # chuboe '`date +%Y%m%d` /etc/postgresql/$PGVERSION/main/postgresql.conf
