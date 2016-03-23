---
author: nikolavp
comments: true
date: 2012-07-28 20:23:00+00:00
layout: post
slug: implement-properties-in-c
title: Implement properties in C plus plus
wordpress_id: 155
categories:
- C++
- programming
tags:
- c++
- properties
- tricky
---


Here is some tricky code in C++ that I was watching recently and decided to post here for future references. Sometime the usage of operator overloading in C++ amuses me so much. Apperently there is a way to implement properties that look the same as normal properties and behave almost the same. The only problem as always is that when you get a compile time error - the messages are pretty confusing if you don't know what's going on. Enough said here is the code for that "beautiful" feature.

```java
/* vim: set sw=4 sts=4 et foldmethod=syntax : */
/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */

#include 

using std::cout;

template
class Property
{
private:
    PropertyType data;

public:
    /* Use the cast type operator here */
    operator PropertyType()
    {
        return Controller::get(data);
    }

    PropertyType operator=(PropertyType a)
    {
        Controller::set(data, a);
        return Controller::get(data);
    }
};

class IntController
{
public:
    static int get(int &a)
    {
        return a;
    }

    static void set(int &a, int &b)
    {
        a = b;
    }
};

class Man
{
public:
    Property<int, IntController> HP;
};

void PropertyTest()
{
    Man man;
    man.HP = 7;
    man.HP = 7 + man.HP;
    cout << man.HP << "\n";
}

int main (int argc, char const* argv[])
{
    PropertyTest();
    return 0;
}
```

