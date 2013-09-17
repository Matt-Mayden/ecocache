Install
=======


Prerequisites to install ecocache web application:

    * Apache Web server `Apache <http://www.apache.org>`_

    * Backend Database `Mysql <http://www.mysql.com>`_

    * Mako is a lightweight UTF-8 compatible and easy to use PHP framework `Mako <http://makoframework.com>`_

    * Sleek, intuitive, and powerful front-end framework for faster and easier web development. `BootStrap <http://getbootstrap.com>`_


WAMP/LAMP Environment
----------------------


Windows Install
^^^^^^^^^^^^^^^

Tutorial to install  WAMP (Windows Apache Mysql PHP) can be found  `here <http://www.wampserver.com/en/>`_
    

Linux Install
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**Install Apache**

    
    To start off we will install Apache.

    1. Open up the Terminal (Applications > Accessories > Terminal).

    2. Copy/Paste or type the following line of code into Terminal and then press enter: ::

        sudo apt-get install apache2

    3. The Terminal will then ask you for you're password, type it and then press enter.




    *Testing Apache*
    To make sure everything installed correctly we will now test Apache to ensure it is working properly.

    1. Open up any web browser and then enter the following into the web address:

    http://localhost/

    You should see a folder entitled apache2-default/. Open it and you will see a message saying *"It works!"* , congrats to you! or something like that!

     


**Install PHP**

    In this part we will install PHP 5.

   
    Step 1. Again open up the Terminal (Applications > Accessories > Terminal).

    Step 2. Copy/Paste or type the following line into Terminal and press enteri: ::

        sudo apt-get install php5 libapache2-mod-php5

    Step 3. In order for PHP to work and be compatible with Apache we must restart Apache. Type the following code in Terminal to do this: ::

        sudo /etc/init.d/apache2 restart

     


    *Test PHP*
    
    To ensure there are no issues with PHP let's give it a quick test run.

    Step 1. In the terminal copy/paste or type the following line: ::

        sudo gedit /var/www/testphp.php

    This will open up a file called testphp.php.

     

    Step 2. Copy/Paste this line into the phptest file: ::

     

        <?php phpinfo(); ?>


    Step 3. Save and close the file.

    Step 4. Now open you're web browser and type the following into the web address: code::

        http://localhost/testphp.php

     
    (It will show you the page that has all information about your php. If you have prior experience of installing php
    in some other OS, you must have seen this page.)

    Congrats you have now installed both Apache and PHP!

     

**Install MySQL**


    To finish this guide up we will install MySQL.

    Step 1. Once again open up the amazing Terminal and then copy/paste or type this line: ::

        sudo apt-get install mysql-server

    Step 2 (optional). In order for other computers on your network to view the server you have created, you must first
    edit the "Bind Address". Begin by opening up Terminal to edit the my.cnf file. ::

        gksudo gedit /etc/mysql/my.cnf

    Change the line ::

        bind-address = 127.0.0.1

    And change the 127.0.0.1 to your IP address.

    (In Linux Mint 11, terminal itself asked to the set password, But if it doesn't follow the step 3.)

    Step 3. This is where things may start to get tricky. Begin by typing the following into Terminal: ::

        mysql -u root

    Following that copy/paste or type this line: ::

        mysql> SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword');

    (Make sure to change yourpassword to a password of your choice.)

    Step 4. We are now going to install a program called phpMyAdmin which is an easy tool
    to edit your databases. Copy/paste or type the following line into Terminal: ::

        sudo apt-get install libapache2-mod-auth-mysql php5-mysql phpmyadmin

    After that is installed our next task is to get PHP to work with MySQL.
    To do this we will need to open a file entitled php.ini. To open it type the following: ::

        gksudo gedit /etc/php5/apache2/php.ini

    Now we are going to have to uncomment the following line by taking out the semicolon (;).

    Change this line: ::

        ;extension=mysql.so

    To look like this: ::

        extension=mysql.so

    Now just restart Apache and you are all set! ::

        sudo /etc/init.d/apache2 restart

     

    If you get a 404 error upon visiting http://localhost/phpmyadmin: You will need to configure apache2.conf to work with Phpmyadmin. ::

        sudo gedit /etc/apache2/apache2.conf

    Include the following line at the bottom of the file, save and quit.

    Include /etc/phpmyadmin/apache.conf

     

    Then just restart Apache ::
        
        sudo /etc/init.d/apache2 restart



Mako
----

    Installing Mako is easy and can be with one single command thanks to composer: ::

        composer create-project mako/app <project name>

    Remember to make the app/storage/* directories writable.
    
    Mako can now be updated using the following command: ::

        composer update

    *Basic Apache Configuration* ::

        <VirtualHost *:80>
        DocumentRoot /srv/www/mako/htdocs

        <Directory /srv/www/mako/htdocs>
            
            Options -Indexes FollowSymLinks -MultiViews
            AllowOverride All
            Order allow,deny
            allow from all

            # URL rewrite
            RewriteEngine on
            RewriteCond %{REQUEST_FILENAME} !-f
            RewriteCond %{REQUEST_FILENAME} !-d
            RewriteRule ^(.*)$ index.php/$1 [L]

        </Directory>

        LogLevel warn
        ErrorLog /srv/www/mako/logs/error.log
        CustomLog /srv/www/mako/logs/access.log combined

        </VirtualHost>


Bootstrap
---------
    To install Bootstrap framework download from this link http://getbootstrap.com/getting-started/ and copy in the destination directory.













