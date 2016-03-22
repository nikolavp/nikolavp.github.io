---
author: nikolavp
comments: true
date: 2008-08-03 07:22:00+00:00
layout: post
slug: dont-trust-garbage-collectors
title: Don't trust garbage collectors
wordpress_id: 11
categories:
- java
- programming
---

I recently read [This blog post](http://bootstrapping.wordpress.com/2007/02/16/memory-management-is-still-your-responsibility/) and the author has a nice point about garbage collectors. When we program in languages with that feature we should not blindly trust the automatic memory management for **everything**. Most of the time it is ok, but sometimes you have to think about memory management in those languages too.
In the blog post Tahseen Ur Rehman gives an example with a thread which was holding some references to the objects so they could not be deleted, so the users were getting OutOfMemoryErrors. The author also warn us that we should **not** trust the lie


“In some programming languages, memory management is the programmer’s responsibility.
… …
An alternate approach to memory management that is now commonly utilized, especially by most modern object-oriented languages, is automatic management by a program called a garbage collector“


There is also a nice example in Effective Java with the same point. So next time when we want to do something _smart_ with the language, we should think if it is ok for the garbage collector and it will be able to do it's job. I find that most of the time those kind of errors are found in concurrent programs and _hacky_ arrays.
