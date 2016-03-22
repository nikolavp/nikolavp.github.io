---
author: nikolavp
comments: true
date: 2010-05-22 12:19:00+00:00
layout: post
slug: installing-jdk7-in-ubuntu
title: Installing jdk7 in Ubuntu
wordpress_id: 40
categories:
- java ubuntu jdk7 eclipse
---

Today i wanted to try the new version of jdk and see how is the project going. Last time i checked it was too buggy to setup so i was a bit of disappointed. As I using ubuntu on my laptop i wanted to check if my distro is providing a development package for the new vm but that wasn't the case :(. Luckily the jdk project provides some nice prepackaged binaries you can install yourself over [here](http://dlc.sun.com.edgesuite.net/jdk7/binaries/index.html). After getting the binaries for my architecture(x64) and unpacking the archive i got a jdk1.7.0 directory. In ubuntu it pretty easy to set your platform default options and the tool for this is update-alternatives. Here are the commands if you have Ubuntu:

  
  


Move the directory to the jvm directory where it should reside:  

    
    sudo mv jdk1.7.0/ /usr/lib/jvm 

  


  


Check how many alternatives you have:  

    
    sudo update-alternatives --config java

  


Install the new alternative:   

    
    sudo update-alternatives --install /usr/bin/java java <br></br>/usr/lib/jvm/jdk1.7.0/jre/bin/java 2

  
  
where 2 should be the next unused index from the last command. So if you have 2 java alternatives your new installation should have index 3

  


Set the platform default to be the new option:  

    
    update-alternatives --config java

  


  


Now all your java applications will use the new jdk. I cannot tell the difference but as I work more with eclipse and other java tools i will be make my opinions and might share them here :)  


  
  


Happy coding
