# Ansible playbook
The complete GLPI 9.3.3 and MariaDB 10.3 installation @DESENBAHIA

## v1.0.0
## Author: DevOps team @DESENBAHIA
## Date: 2019, Feb

### Instructions
Place the database dump and application backup files into controler machine "/tmp" directory. Run the playbook.
* **DB dump file name: /tmp/{ mariadb_dump_file }
* **GLPI app backup file name: /tmp/{ glpi_custom_app_bkp }
* **Playbook execution command: ansible-playbook -i hosts --ask-pass --ask-sudo-pass site.yml


### Manual tasks to be done before execution
* **Dump glpi database into tmp
cd /tmp
mysqldump -u root -p{ mariadb_root_password } --default-character-set=utf8 glpi > { mariadb_sql_file }

* **Backup (compress) GLPI app
cd /var/www
tar -cvzf { glpi_custom_app_bkp } glpi/


### TODO
--copiar imagens (login_logo_glpi.png & fd_logo.png & favicon.ico)
--deployar funcionalidade de backup


### Just some notes
Pablo Djavan
mysql-update -u root ???????

-- Copy 
scp { mariadb_dump_targz_file } dbezerra@10.35.11.23:~/Documents/ansible/glpi-atualizado/roles/dbtier/files
scp backup_centraldeservicos.tar.gz dbezerra@10.35.11.23:~/Documents/ansible/glpi-atualizado/roles/glpi/files

--checa os arquivos

-- Compress (targz) dump file
cd /tmp
tar -cvzf { mariadb_dump_targz_file } { mariadb_dump_file }