#!/bin/bash

# The purpose of this script is to install and configure PostgreSQL
# and the tools needed to support it.

# bring in variables
source moeboe.properties

echo "">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "HERE: Installing PostgreSQL DB"
echo "HERE: Installing PostgreSQL DB">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README

sudo apt-get --yes install postgresql postgresql-contrib phppgadmin libaprutil1-dbd-pgsql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '"$MOEBOE_PROP_DB_PG_SU_PW"';"
sudo -u postgres service postgresql stop

# The following commands update postgresql to listen for all
# connections (not just localhost). Make sure your firewall
# prevents outsiders from connecting to your server.
echo "PostgreSQL installed.">>$MOEBOE_PROP_README
echo "The script installed the phppgadmin tool to help you administer your database.">>$MOEBOE_PROP_README
echo "SECURITY NOTICE: Make sure your database is protected by a firewall that prevents direct connection from anonymous users.">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
sudo sed -i '$ a\host   all     all     0.0.0.0/0       md5' /etc/postgresql/$MOEBOE_PROP_DB_PG_VERSION/main/pg_hba.conf
sudo sed -i 's/local   all             all                                     peer/local   all             all                                     md5/' /etc/postgresql/$PGVERSION/main/pg_hba.conf
sudo sed -i '$ a\listen_addresses = '"'"'*'"'"' # chuboe '`date +%Y%m%d` /etc/postgresql/$MOEBOE_PROP_DB_PG_VERSION/main/postgresql.conf

# start postgresql after all changes and before installing phppgadmin
sudo -u postgres service postgresql start

# copy the phppgadmin apache2 configuration file that puts phppgadmin on port 8083
sudo cp $SCRIPTPATH/web/000-phppgadmin.conf /etc/apache2/sites-enabled
# remove the apache2 default site
sudo unlink /etc/apache2/sites-enabled/000-default.conf
# make apache listen on port 8083
sudo sed -i '$ a\Listen 8083' /etc/apache2/ports.conf

sudo service apache2 restart

echo "SECURITY NOTICE: phppgadmin has been installed on port 8083.">>$MOEBOE_PROP_README
echo "Make sure this port is blocked from external traffic as a security measure.">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README

echo "************************************************">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "HERE END: Installing PostgreSQL DB"
echo "HERE END: Installing PostgreSQL DB">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "************************************************">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
echo "">>$MOEBOE_PROP_README
echo "You can read the installation notes here: $MOEBOE_PROP_README"
