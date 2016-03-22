---
author: nikolavp
comments: true
date: 2012-07-28 20:16:25+00:00
layout: post
slug: using-ssh-without-password
title: Using SSH without password
wordpress_id: 151
---

# The problem


Ok so you are using Linux or other Unix(Solaris, *BSD) favors to deploy your systems. If so you are most probably using ssh to log in on those servers. So to login to some external machine you will have to type something like this:

    
    ssh 73.32.32.22 -l nikolavp


and then when prompt for password, enter it. **scp**, **rsync** and friends will require almost the same amount of work.
This is bad for the following reasons:



	
  * It requires you to know the IP address or the DNS name whatsoever instead of doing an alias for yourself

	
  * You will have to remember the username for that host

	
  * You will have to remember the password for that host

	
  * You will have to break your fingers to type that over and over again


Well if you are like me you most probably don't want to type all that much just do your work. Here I will provide a setup that will save your world :)


## Create an alias for the host


SSH provides a convenient shortcuts for making internal aliases for the hosts. You can define a host alias for an IP address(or DNS resolvable name) and the username for that host. So to not use the password for our imaginary host from the example above, we have include the following in our **~/.ssh/config** file(create it if it doesn't exist)

    
    Host=foo
    Hostname=72.32.32.22
    User=nikolavp




## Create a ssh key


You should forget about your password as authenticating method, it is far safer to use a key for that and some sort of cryptography like RSA. You can follow some guide from the internet on how to do that exactly. For example [this one](http://www.linuxproblem.org/art_9.html) seems pretty simple and straightforward. Except that there is a far better command now for the last two steps - its called **ssh-copy-id**. You can man it if you want to know what it does.


## Setting up a keymanager


To be able to unlock your key once on every session start you should be using a key manager. Likely most of the big desktop environments have done this for you - gnome has gnome-keyring and kde has the kde-wallet. On other more primitive environments you will be on your own. You can look at the guide from Archlinux for more information [here](https://wiki.archlinux.org/index.php/SSH_Keys#ssh-agent).


# Final thoughts


After following the steps from this simple and short guide you should be able to log into your servers without any password with just it's alias. For our host from the example, I will just have to write

    
    ssh foo
