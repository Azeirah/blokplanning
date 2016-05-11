Installation log for installing laravel

# 1. Installing Composer

Composer is a tool to manage php dependencies. Laravel needs to be installed using composer, we installed composer using the commands below.
After this installation, the `composer` command is available on the command line.

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '92102166af5abdb03f49ce52a40591073a7b859a86e8ff13338cf7db58a19f7844fbc0bb79b2773bf30791e935dbd938') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=/usr/bin --filename=composer
php -r "unlink('composer-setup.php');"
```

# 2. Installing laravel

To install laravel, we need to execute this command in the blokplanning directory.

`composer global require "laravel/installer=~1.1"`

With laravel comes a command line program to manage laravel installations. To run this program we need to add the composer's bin directory to our path.

```
echo "PATH=$PATH:~/.composer/vendor/bin" >> ~/.profile
```

After restarting your terminal you can execute the `laravel` command. Now we install laravel inside the git repo.

```
laravel new blokplanning
```

# 3. git

```
cd blokplanning
git init
```
