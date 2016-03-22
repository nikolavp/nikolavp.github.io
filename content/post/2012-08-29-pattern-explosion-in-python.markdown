---
author: nikolavp
comments: true
date: 2012-08-29 15:18:05+00:00
layout: post
slug: pattern-explosion-in-python
title: Pattern matching or sort of in python
wordpress_id: 188
categories:
- dynamic
- programming
tags:
- haskell
- pattern matching
- python
---

I must admit that [pattern matching](http://en.wikipedia.org/wiki/Pattern_matching) is not really new to me. The first time I looked at haskell I was impressed by the idea a lot. It wasn't until late that I found about new languages on the JVM that support the same idiom. 

For this to work properly - the language should know how to "destruct" an already constructed element. A simple example in haskell is if you have a list of elements and you want to capture the first element in a variable and the remaining part of the list in another variable. In that case you would write something like this:


    
    
    
    f (x:xs) =  -- do something with "x" as the head of the list and "xs" as the tail 
    
    



This is a definition of **f** as a function on one argument - if you then call the function with a list like **[1, 2, 3]** you will have a **x = 1** and **xs = [2, 3]** in the body of the function. 

So given this knowledge today I started coding a python script at work. And I found myself trying this pattern in the python interactive shell - the result was that python supports this for lists at least:


    
    
    >>> p = [1, 2]
    >>> [a, b] = p
    >>> a 
    1
    >>> b
    2
    >>> 
    



But continuing further I was given an error message:

    
     
    >>> p = [1, 2, 3]
    >>> [a, b] = p
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    ValueError: too many values to unpack
    >>> 
    



So while this works for full pattern on lists it won't work if you provide less elements.

It is strange how exotic languages like haskell can open your mind for idioms that you can use in more "accepted" languages like python.
