---
author: nikolavp
comments: true
date: 2012-10-03 07:11:54+00:00
layout: post
published: false
slug: create-mysql-user-only-if-it-does-not-exist
title: Create mysql user only if it does not exist
wordpress_id: 213
---



http://stackoverflow.com/a/5415585/565543

GRANT ALL PRIVILEGES  ON db_name.* 
TO 'user'@'%' IDENTIFIED BY 'password' 
WITH GRANT OPTION;

