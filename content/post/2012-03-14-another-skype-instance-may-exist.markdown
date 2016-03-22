---
author: nikolavp
comments: true
date: 2012-03-14 08:27:12+00:00
layout: post
slug: another-skype-instance-may-exist
title: Another Skype instance may exist
wordpress_id: 164
categories:
- software
tags:
- bash
- linux
- skype
---

Today I got this error message from skype in Linux while I was trying to login. After many attempts to get rid of the message by restarting skype, I finally googled the message and found out that there are two .lck files that need to be deleted. But after trying it and restarting it again, this didn't solve it. If you happen to be one of those unlucky "souls". Do the following:


    
    
    cd ~/.Skype/
    find -name '*.lck' -exec rm {} +
    mv ${old_profile} ${old_profile}.back
    


This deletes all .lck files and makes a backup of your login history data, assuming ${old_profile} is the name of your skype login name.

Now open skype, login in with your account, quit skype and then to restore the history do:

    
    
    rsync -av ${old_profile}.old/ ${old_profile}/
    




