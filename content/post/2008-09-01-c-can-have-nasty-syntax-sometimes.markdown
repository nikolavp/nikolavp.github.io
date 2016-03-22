---
author: nikolavp
comments: true
date: 2008-09-01 16:40:00+00:00
layout: post
slug: c-can-have-nasty-syntax-sometimes
title: C++ can have nasty syntax sometimes
wordpress_id: 23
categories:
- C++
- IRC
- programming
- templates
---

Hmm today on IRC in the channel ##C++ @ Freenode someone posted the following code

    
    /*In g++ this does not work*/
    template
    struct hello
    {
     hello(){};
     ~hello(){};
     template
     int world()
     {
      return _b+_a;
     }
    };


template
void try_hello()
{
hello h;
h.world();
}

so i tried to help the person telling him that he should use a typename before h.world(); because it can ambitious for the compiler. It turns out that the right solution was

    
    h.typename world();


someone asked why is

    
    world()


ambitious for the compiler and seldon said that the compiler can't know the type of world in that context. Well but world is explicitly called with



. Hmm the problem is that when the compiler see that expression it assume that

    
    <


after world is the operator less than. Oh that my brain started to hurt badly :D. Maybe the syntax of C++ is getting really complicated with the years. I think that the new standards won't get rid of those, because they can't. Too much code have been written already to work that way :(
