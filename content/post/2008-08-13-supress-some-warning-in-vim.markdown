---
author: nikolavp
comments: true
date: 2008-08-13 13:06:00+00:00
layout: post
slug: supress-some-warning-in-vim
title: Supress some warning in vim
wordpress_id: 19
categories:
- C++
- programming
- vim
---

Maybe you know that vim parses the output from the compiler so it can jump to the right line which cause the error(:h quickfix for more info). Well it seems that the default compiler options parse even warning which are sometimes pretty annoying. There were some warning for depracated conversion from the compiler because of xmp files. Well i am sure that i don't want to see those. So here is what i have in my ~/.vim/ftplugin/cpp.vim for some time:
    
    let &errorformat = "%-G%f\:%l\:\ warning\:\ deprecated\ conversion\ from\ string%.%#\,".&errorformat

I know that maybe this only works for gcc, but it is a start. You can get more info about the erroformat  with :h errorformat in vim. Happy vimming :)
