---
author: nikolavp
comments: true
date: 2008-07-25 21:59:00+00:00
layout: post
slug: nice-way-to-keep-the-lines-indented-in-vim
title: Nice way to keep the lines indented in vim
wordpress_id: 8
categories:
- programming
- vim
---

Here is one more vim tipp. I just put a new keybinding to my .vimrc file, thanks to \amethyst from #vim@freenode.net :). Here it is

    
    inoremap <expr> <CR> (col("$")==col(".") ? "\<ESC>=a{\<C-O>o" : "\<CR>")


This will indent the whole block before the line if you hit <CR> on the end of the code you are writing in insert mode. If you are not at the end of the line you will get the default behaviour of <CR>. I was not sure how to implement that, but \amethyst really helped me on IRC. Once more this shows the power of chatting with experienced people who know the project very well. Viva open source :).
