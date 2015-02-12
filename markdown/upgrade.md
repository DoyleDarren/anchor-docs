#Upgrading

Make sure you backup your database and files before you begin.

Here's an example for backup up on most servers via SSH using mySQL dump:
```
mysqldump
    --compact
    --quick
    --user myusername
    --password=mypassword
    --host=localhost anchorcms > /path/to/my/site/httpdocs/db.sql
```
Let's make it into a zip file, using tar gzip, and save it in a safe place .
~~~
tar --create
    --gzip
    --file=/home/myusername/backups/anchor.tgz
    --directory=/path/to/my/site/httpdocs
~~~    
##Upgrading from 0.8 and above

1. Download the [latest version](http://anchorcms.com/download)
2. Extract the archive and copy/paste/overwrite the anchor and system folders and the index.php file.
3. Rename anchor/config/database.php --> anchor/config/db.php
4. Rename anchor/config/application.php --> anchor/config/app.php
5. Done!

##Upgrading from older versions (0.8 and below)

1. Delete your old system folder.
2. Download the latest version and extract the archive.
3. Upload and overwrite extracted files to your server.
4. If you have customised the default theme rename it or else it will be overwritten.
5. Copy the database and application sample files from the installer to your new anchor folder.
~~~
cp install/storage/application.distro.php anchor/config/application.php

 cp install/storage/database.distro.php anchor/config/database.php
~~~
6. Edit the new files and copy the details from your old config.php file.  
For example, my old config database details would be changed from this:

~~~
'host' => 'anchor-cms-demo.mysql.eu1.frbit.com',
'port' => '3306',
'username' => 'anchor-cms-demo',
'password' => 'my-awesome-password',
'name' => 'anchorcms',
'collation' => 'utf8_bin'
~~~
To this:
~~~
'driver' => 'mysql',
'hostname' => 'anchor-cms-demo.mysql.eu1.frbit.com',
'port' => 3306,
'username' => 'anchor-cms-demo',
'password' => 'my-awesome-password',
'database' => 'anchorcms'
~~~
7. Run your site and you're done.
