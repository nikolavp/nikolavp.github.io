---
author: nikolavp
comments: true
date: 2008-08-12 19:07:00+00:00
layout: post
slug: kbgoffice-again-workingsort-of
title: kbgoffice again working(sort of)
wordpress_id: 18
categories:
- kbgoffice
- programming
---

The code for kbgoffice is working already on my machine. It is not really ported to Qt4, because right now it relays on the qt3support which will not be there and for good ;). There are also some annoying bugs(I will see where they came from, so keep calm :P). The instructions to compile the code(notice there is no target to install it for now) are in the INSTALL file. To get the code you will need subversion. Search google if you don't know how to get it. The command to checkout the code is

    
    svn co http://svn.assembla.com/svn/kbgoffice/trunk kbgoffice;cd kbgoffice


now

    
    cat INSTALL


and follow the instructions. You will also need the dictionary files which you can find over [here](http://bgoffice.sourceforge.net/)
