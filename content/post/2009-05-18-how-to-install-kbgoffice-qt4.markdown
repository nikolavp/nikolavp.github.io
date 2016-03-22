---
author: nikolavp
comments: true
date: 2009-05-18 10:17:00+00:00
layout: post
slug: how-to-install-kbgoffice-qt4
title: How to install kbgoffice qt4
wordpress_id: 36
---

I finally had the time to play a little bit with the build system of kbgoffice and the qt4 port i forked a year ago. Now the program can be installed with a simple make install rule from the build directory. To be able to compile it you will need a compiler, the qt4 header files and development tools. For example on my kubuntu it needs:






	
  1. build-essential

	
  2. qt4-dev-tools

	
  3. cmake

	
  4. subversion(to get the source)


You can get all that with a simple command **_sudo aptitude install build-essential qt4-dev-tools cmake subversion _**. After satisfying all the dependencies you need to get the source code with
**_svn co http://svn.assembla.com/svn/kbgoffice/trunk kbgoffice_**
go to the kbgoffice directory, create a new build directory, compile
_**cd kbgoffice;mkdir build;cd build;cmake ../;make**_
and if you wаnt to install the program
_**sudo make install**_
Then to startup the program just type kbgoffice in the konsole or the terminal client you are using <Alt+F2> works fine too. Have fun :D.

I didn't find how to make an uninstall rule so there is no make uninstall option for now. To delete the files installed, just delete the /usr/local/share/bgoffice directory and the /usr/local/bin/kbgoffice executable file :).


![](http://img.zemanta.com/pixy.gif?x-id=55b39261-a999-82b1-8b34-c3842a30fc88)



