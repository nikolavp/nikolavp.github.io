---
author: nikolavp
comments: true
date: 2012-02-19 09:32:57+00:00
layout: post
slug: moved-from-blogger-to-wordpress
title: Moved from blogger to wordpress
wordpress_id: 47
categories:
- blog
tags:
- blog
- configuration
- wordpress
---

# The why


You are currently reading this post on my new blog, built on top of [Wordpress](http://wordpress.com/) and [OpenShift](https://openshift.redhat.com/app/). My blog was on the blogger platform in the past, but i finally decided to move from there for the following reasons:



	
  * **small screen/content width** - this was the main reason that made me move. The width of the box content is so small that it's really hard to post a snippet of code. When I struggled half an hour with the templates just to make them wider and I couldn't, I just gave up... Which leads us to the next point

	
  * **more control** - I was feeling the blogging platform pretty limited for some things. I can remember spending 3 hours once just to make the damn code snippets work and highlight as I wanted them to be

	
  * **not mine** - the platform is pretty nice, but was always feeling the site is not really mine.


I am not really a fan of PHP, actually it's the only language that I don't like **at all**, but wordpress seems like the best option out there for blogging. Everything seems to be simple and at the end of the day nothings stops me to get my hands dirty and edit some code, which btw is **really** readable. It's just not like other PHP code I have dealt with.


# Step by step guide


So here is a step by step guide to the migration process.


## Create a blogging openshift application


This assumes that you have the openshift rhc client and stuff installed. So here we go...



	
  1. create the application, named blog in my case(this assumes you have a domain already)

    
    rhc-create-app -a blog -t php-5.3




	
  2. create a mysql instance

    
    rhc-ctl-app -a blog -e add-mysql-5.1


this will output some information about your current database name, user, password, url




## Install wordpress


First we download the wordpress distribution

    
    cd blog
    wget -c http://wordpress.org/latest.tar.gz
    tar zxvf latest.tar.gz
    mv wordpress/* php


Push the code to openshift

    
    git add php
    git commit -m 'Initial wordpress commit'
    git push origin


wordpress should be now deployed on the server. Now



	
  1. go to _http://appname-domain-name.rhcloud.com/wp-admin/setup-config.php_ to setup the database information then

	
  2. go to _http://appname-domain-name.rhcloud.com/wp-admin/install.php_ to setup the tables, etc.


Note that **appname** should be application name that we created in step 1 in openshift and the **domain-name** is your domain on openshift. That's it, you now should have your wordpress ready to go. With this you are able to install plugins, create custom pages, etc, etc.


## Setup redirection


There is only one last step until we are finally done. We want to notify our users somehow that the blog has moved.



	
  1. Go in blogger to **Settings -> Publishing** and specify the new domain for your blog there.

	
  2. Go in wordpress to **Settings -> Permalinks**, set the custom structure radio button and type

    
    /%year%/%monthnum%/%postname%.html


there. This will make sure that links to post from the old blog go to the new blog content.



  3. Write a new post telling your users that you moved. This is only for feed purposes.




I will be glad if someone finds this guide helpful.
