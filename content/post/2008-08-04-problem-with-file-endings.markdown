---
author: nikolavp
comments: true
date: 2008-08-04 15:40:00+00:00
layout: post
slug: problem-with-file-endings
title: Problem with file endings
wordpress_id: 13
categories:
- programming
- vim
---

Today I had the same problem with mixed file endings. It seems that many editors are still dealing bad with that on different platforms, so you get different line endings. This times instead of manually dealing with the problem I googled and it seems that there is a nice workaround, you just need to type

    
    :%s/\r//


and you are done. This will take care of you, I also have ff=unix in most of my files and in my vimrc.
