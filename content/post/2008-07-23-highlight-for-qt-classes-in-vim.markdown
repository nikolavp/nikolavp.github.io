---
author: nikolavp
comments: true
date: 2008-07-23 19:04:00+00:00
layout: post
slug: highlight-for-qt-classes-in-vim
title: Highlight for Qt classes in vim
wordpress_id: 7
categories:
- Qt
- vim
---

Maybe some of you like me like to use a sophisticated library for C++ development. My choice is Qt. I really like to have highlighting for most of the classes so here is my [~/.vim/syntax/cpp.vim](https://github.com/nikolavp/configs/blob/master/vim/syntax/cpp.vim). This will highlight all of the Qt classes as built in structures of the language, which is really nice. I just copied all of the classes from the Qt's web site ;).

UPDATE:
Today Vidas Katinas send me the modified version so i have updated the link. I have also added a checking for a variable. I am also using stl lately so here is the installation guide if you use them both:

    
    
    mkdir -p ~/.vim/after/syntax/cpp
    wget -c http://nikolavp.googlepages.com/cpp.vim -O ~/.vim/after/syntax/cpp/qt.vim
    wget -c http://www.vim.org/scripts/download_script.php?src_id=8628 -O ~/.vim/after/syntax/cpp/stl.vim
    


Now if you want to disable the Qt highlighting just put that somewhere in your vimrc file

    
    let g:qt_syntax=0


If for example you want to disable the syntax for the current file(it is too slow ot whatever) type this

    
    :let g:qt_syntax=0:e


and

    
    :e!


if you have made changes.
