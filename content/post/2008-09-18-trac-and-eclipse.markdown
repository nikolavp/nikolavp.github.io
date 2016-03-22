---
author: nikolavp
comments: true
date: 2008-09-18 10:03:00+00:00
layout: post
slug: trac-and-eclipse
title: Trac and Eclipse
wordpress_id: 24
categories:
- eclipse
- kbgoffice
- mylyn
- trac
---

Yesterday I wanted to integrate [Trac](http://trac.edgewall.org/) tasks from the [kbgoffice](http://trac.assembla.com/kbgoffice/report/1) task list in my IDE. I was sure that eclipse should have that feature so I search in [google](http://google.com/) and found that indeed there is a connector for Trac in mylyn-extras. Well i wanted to find an update site for that but it seems there isn't any. So i downloaded the the extras version from the [main download page](http://www.eclipse.org/mylyn/downloads/) and installed it locally.

It seems that eclipse is getting really mature since last time i did that i had bad problems with dependencies not resolved and things like that. Now it included the package as just another update site source, so the package manager can resolve dependencies if any.

All in all the plugin is not really what i was hoping for. I had some tasks from mylyn throughout the project and wanted to synchronize those but i couldn't. Also the trac tasks when opened just open a browser which is not really what i was hoping for(i wanted to get a nice view which should look like a normal mylyn task). It is better than opening an external browser and searching for the task you want though, but not the best and i hope they fix it for the next release.
