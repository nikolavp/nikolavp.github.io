---
author: nikolavp
comments: true
date: 2009-08-14 17:14:00+00:00
layout: post
slug: reloading-jars-at-runtime
title: Reloading jars at Runtime
wordpress_id: 37
categories:
- dynamic
- jar
- java
- programming
- reloading
---

I haven't blogged in a while but now i have some time :). This week I had to dynamically reload some jars from a directory and i searched the net about the problem. I will show the implementation that I finally came up with. The problem with the dynamically loading external jars is that they should not be in the CLASSPATH because the system classloader is making some optimizations(cache) of the currently loaded classes and doesn't search again in the CLASSPATH if it has already instantiated the class. So to make the jars dynamically loadable we have to make our own ClassLoader or we can use the URLClassLoader which is part of the JavaSE. The idea is that every time we load the class we should use a new object of the URLClassLoader so we don't use the cache. And also we should have an interface so we can cast our instantiated object or the alternative is to use reflection and the Method class. But enough words here is the implementation:
1. The Interface :

    
    
    package org.nikolavp;
    
    public interface Reloadable{
        public void method();
    }
    


2. The Class which will reload our class by a given name:

    
    
    import java.io.File;
    import java.net.MalformedURLException;
    import java.net.URL;
    import java.net.URLClassLoader;
    
    import org.nikolavp.Reloadable;
    
    public class ClassReloader{ 
        public static Reloadable reload(String className) {
            Reloadable obj = null;
            URL jar = null;
            try {
                jar = new File("jars/somejar.jar").toURI().toURL();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            URLClassLoader loader = new URLClassLoader(new URL[] { jar },
                            ClassLoader.getSystemClassLoader());
            try {
                Class clazz = loader.loadClass(className);
                obj = (Reloadable) clazz.newInstance();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }  return obj;
        }
    }
    



3. The Main class to test our work:

    
    
    import org.nikolavp.Reloadable;
    
    public class Main{
        public static void main(String[] args) {
            while (true) {
                Reloadable object = ClassReloader.reload("MyClassFromSomeJar");
                object.method();
                try {
                    Thread.sleep(10 * 1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    


Assume that MyClassFromSomeJar exist in the jars/somejar.jar
you can now make changes to the
code in the external jar and see the results :)


Conclusion: This is one of the areas where java really shines. Try doing that with static languages like C/C++ :)


![](http://img.zemanta.com/pixy.gif?x-id=7d07d2ce-7a12-8013-84c5-fd2a7211886a)



