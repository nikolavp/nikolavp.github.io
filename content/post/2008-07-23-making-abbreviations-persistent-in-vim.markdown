---
author: nikolavp
comments: true
date: 2008-07-23 10:47:00+00:00
layout: post
slug: making-abbreviations-persistent-in-vim
title: Making abbreviations persistent in vim
wordpress_id: 6
categories:
- programming
- vim
---

If you are like me, most of the time you make more mistakes in vim, because your mind is little slower than you fingers. Enter abbreviations which is a really neat feature in vim :). You just have to type

    
    :iabbrev wrongstring wantedstring


in command mode and the next time you type the word wrong vim will fix it. So where is the problem? The problem is that when you type that in command mode it is not persistent between sessions. I really wanted to save those save somehow in a file. So here is the solution :)

    
    function! Abbreviate(input, output) python << EOFdef appendAbb():    import os    import vim    home = os.getenv("USERPROFILE") or os.getenv("HOME")    home += "/myvimfiles/abbs.vim"    Abbs = open(home, "a")    inputstr = vim.eval("a:input")    outputstr = vim.eval("a:output")    abbreviation = "iabbrev " + str(inputstr) + " " + str(outputstr)+ "\n"    Abbs.write(abbreviation)EOF:py appendAbb()let abbrevation = "iabbrev ". expand(a:input). " ". expand(a:output)execute abbrevationendfunctioncommand! -nargs=+ Abb :call Abbreviate(<f-args>)


Put that in your ~/.vimrc file and you are done :). You should change /myvimfiles/abbs.vim to the file with abbreviations you would like to use. If it is in a special directory not in your runtimepath you should also put source "path/to/the/file" in vimrc :). Now next time you want to correct a type just type

    
    :Abb wrongstring correctstring


and that's all ;)
Happy vimming
