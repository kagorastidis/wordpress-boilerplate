# Wordpress BoilerPlate #
--------------------------------------------
This is a quick start package for new Wordpress Projects build with Timber


# QuickStart: #
-------------------------------------------
* Fork the Repo
* Clone it to your local Machine
* Import the DB from `\dump` with PHPmyAdmin
* Make a DB user. (default now is root)
* Go to `yourdb > wp_options' and change the "siteurl" and "home" to match your url.
* Remember to change wp-config.php
* **Change push.sh configuration**
* login to /wp-admin `cherry/Ξ€ΟΞ΅ΟΞΉ!@12`

# Database #
-----------------------------------------------
* Db: wordpress-boilerplate
* User: root

# General: #
----------------------------------------------

**Plugins Included:**

* Advanced Custom Fields
* Akismet
* Duplicator
* Slideshow
* Timber
* Wordfence Security
* WP Super Cache
* Yoast SEO
* Contact Form 7
* EWWW Image Optimizer
* Autoptimize

**Credentials**

* Admin Url: `SITE_NAME/wp-admin`

**Users:**

* Super User: `cherry/Ξ€ΟΞ΅ΟΞΉ!@12`


# Development #
----------------------------------------------

**Paths**

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
* Remove `push.sh` and `dump` folder as it is not needed any more and can be a security issue
* Enable Plugins `Wordfence Security`, `WP Super Cache`, `Autoptimize`, `Yoast SEO`
* Enable `Polylang` Plugin **only if your site is multilingual**
* Test that everything runs smoothly