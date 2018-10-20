# Wordpress BoilerPlate #
--------------------------------------------
This is a quick start package for new Wordpress Projects build with Timber


# QuickStart: #
-------------------------------------------
* Fork the Repo
* Clone it to your local Machine
* Import the DB from `\dump` with PHPmyAdmin
* Make a DB user. (default now is root)
* Remember to change wp-config.php
* **Change push.sh configuration**
* login to /wp-admin `cherry/Τσερι!@12`

# Database #
-----------------------------------------------
* Db: wordpress-boilerplate
* User: root
* Pass: ""

# General: #
----------------------------------------------

**Plugins Included:**

* Advanced Custom Fields
* Akismet
* UpdraftPlus
* Timber
* Wordfence Security
* WP Super Cache
* Yoast SEO
* Contact Form 7
* EWWW Image Optimizer
* Autoptimize

**Credentials**

* Admin Url: ` SITE_NAME/wp-admin`

**Users:**

* Super User: `cherry/Τσερι!@12`


# Development #
----------------------------------------------

**Paths**

* theme.css --> `wp-content/themes/entropia/static/css/theme.css`
* theme.js --> `wp-content/themes/entropia/static/js/theme.js`
* custom.css --> `wp-content/themes/entropia/static/custom.css`
* custom.js --> `wp-content/themes/entropia/static/custom.js`

Development workflow as usual.

**Pushing to the Remote**
* `git checkout development`
* type `sh push.sh` from the root folder of your local repo

# Production #
------------------------------------------------

**Steps:**

* Change **DB user & password** etc. Update `wp-config.php`
* Change Wordpress Admin credentials
* Remove `push.sh` as it is not needed any more and can be a security issue
* Make sure that the e-mails in `Settings -> General` and contact forms are correct
* Enable Plugins `Wordfence Security`, `WP Super Cache` and `Yoast SEO`
* Enable needed optimizations in `Autoptimize`
* Define proper keys in `config.php`
* Test that everything runs smoothly