---
author: nikolavp
comments: true
date: 2008-07-21 18:49:00+00:00
layout: post
slug: renaming-a-variable-in-gvim
title: Renaming a variable in gvim
wordpress_id: 5
categories:
- programming
- vim
---

Some of you may be missing the nice IDE's and their neat features when you are editing in gvim. I was myself a long time Eclipse user, but I found that it doesn't make me more productive, but just eat the resources of my machine. I missed the renaming variable feature in gvim for some time now. Today this is over I was reading the manual of vim and found what I was looking for. We all know the substitute command, but I was not sure how to replace the variable with one command for all files in the project. So here is what I have now in my .vimrc:

    
    fun! BuffersRenameVar(cword, newvar)        let word = a:cword        let newvar = a:newvar        let replace = ":bufdo %s/\\\


You just hit \brn for buffer rename and have to change the "nvname"
with the new name of the variable and that's all :). This will ask you
to rename every appearance of the variable in all open buffers. Don't
forget to open all all your files in vim. This will also put a global
mark named "R" so you can continue your work. Happy vimming
