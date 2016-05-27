=============================
Opzetten project blokplanning
=============================

Deze guide is geschreven om van helemaal niets tot volledige installate van dit project. Wanneer je klaar bent met deze guide kan je het project openen, bewerken, zijn alle afhankelijkheden geïnstalleerd en is alles geconfigureerd.

Dit is geschreven voor Linux, voor Windows kan je XAMPP installeren ipv LAMP, composer is niet nodig, en moet je uitzoeken hoe je XAMPP in moet stellen voor een project.

=============================
Installeren van de LAMP stack
=============================

sudo apt-get install python-software-properties
sudo apt-get install -y php5 php5-mcrypt php5-gd
sudo apt-get install apache2 libapache2-mod-php5
sudo apt-get install mysql-server php5-mysql
sudo apt-get install sqlite php5-sqlite

Bij het installeren van "mysql" server zal er gevraagd worden om een wachtwoord. Voer een wachtwoord in en VERGEET DIT WACHTWOORD NIET.

=============================
Installeren van composer
=============================

Composer is een package manager voor php projecten. Composer hoeft niet per sé nu geïnstalleerd te worden, doe dit alleen als je composer nodig hebt.

Voer deze commando's uit:

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

=============================
Installeren van project
=============================

De volgende stap is om het bestaande laravel project in te stellen voor gebruik met apache.

```
cd /var/www
git clone https://github.com/Azeirah/blokplanning.git
```

Nu gaan we alle php dependencies installeren met composer

cd /var/www/blokplanning
sudo composer install

=============================
Instellen apache
=============================

Om op de site te kunnen komen moet je apache nog instellen.

In /etc/apache2/sites-enabled staat een file genaamd "000-default.conf"
Maak een kopie van deze file in dezelfde folder, en hernoem haar naar "blokplanning.com.conf". Dat de naam exact is zoals hiernaast staat is belangrijk, anders zal apache de instellingen niet goed kunnen vinden.
Hieronder de commando's om dit te doen

cd /etc/apache2/sites-enabled
cp 000-default.conf blokplanning.com.conf

Open nu het nieuwe bestand blokplanning.com.conf, verwijder de inhoud en plak alles tussen de ``` in het bestand.

```
<VirtualHost *:80>
  ServerName blokplanning.com
  DocumentRoot "/var/www/html/blokplanning/public"
  <Directory "/var/www/html/blokplanning/public">
    AllowOverride all
  </Directory>
</VirtualHost>
```

Apache wordt by default als `www-data` gedraaid, je project is in bezit van je eigen user, en niet van www-data, hierdoor krijg je permission errors.
De makkelijkste manier om dit op te lossen is als volgt

Zoek uit wat je Linux username is (gewoon de username waarmee je inlogt) en open het bestand `/etc/apache2/envvars" en vervang `www-data` in de volgende twee lijntjes met je eigen username.

```
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
```

Herstart nu apache

```
sudo service apache2 restart
```

Nu zijn we bijna klaar. Je moet nog je hosts file aanpassen zodat wanneer je naar blokplanning.com gaat in je browser, dat er wordt doorgewezen naar je lokale apache installatie.

Open /etc/hosts in een editor en voeg aan het eind van de file deze lijn toe:

127.0.0.1 blokplanning.com

Sla de file op (heb je permissions voor nodig..).
