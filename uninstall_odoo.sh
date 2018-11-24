sudo service odoo-server stop
sudo rm -R /opt/odoo
sudo rm -f /etc/odoo-server.conf
sudo rm -f /etc/odoo.conf
update-rc.d -f odoo-server remove
sudo rm -f /etc/init.d/odoo-server
userdel -r postgres
groupdel postgres
sudo apt-get remove postgresql -y
sudo apt-get --purge remove postgresql\* -y
sudo rm -r -f /etc/postgresql/
sudo rm -r -f /etc/postgresql-common/
sudo rm -r -f /var/lib/postgresql/