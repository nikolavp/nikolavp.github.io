---
author: nikolavp
comments: true
date: 2009-09-22 16:08:00+00:00
layout: post
slug: installing-flash-64bit-on-kubuntu-jaunty
title: Installing flash 64bit on Kubuntu jaunty
wordpress_id: 39
categories:
- firefox
- flash
- kde
- kubuntu
- programming
---



Maybe some of you know that kubuntu/ubuntu is providing 32 bit flash player and is using nspluginwrapper if you are using an 64 OS. Here the nspluginwrapper is making problems, it is making my machine unresponsible if I am watching 3 flash sites at the time and so on. I am also suspecting that it is the reason firefox crashes sometimes on some flash movies.

So here is the workarround. On the official website of adobe there is no 64 option so we have to dig a little more. We push a search on google and [here is what we get ](http://labs.adobe.com/downloads/flashplayer10.html). It seems that there is some 64bit support so we scroll down the page and find a download link. Here is the whole procedure for installing the 64bit flash :):

    
           wget -c http://download.macromedia.com/pub/labs/
           flashplayer10/libflashplayer-10.0.32.18.linux-x86_64.so.tar.gz
           tar zxvf libflashplayer-10.0.32.18.linux-x86_64.so.tar.gz
           mkdir -p ~/.mozilla/plugins
           mv libflashplayer.so ~/.mozilla/plugins


NB. Make sure that you uninstall any previous version of the flash player :)


![](http://img.zemanta.com/pixy.gif?x-id=52cd7226-0452-8fc0-a3b9-67195690fcae)



