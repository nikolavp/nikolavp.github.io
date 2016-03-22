---
author: nikolavp
comments: true
date: 2008-07-31 20:59:00+00:00
layout: post
slug: a-little-benchmark-with-c-and-java-in-the-game
title: A little benchmark with C++ and Java in the game.
wordpress_id: 10
categories:
- C++
- java
- programming
---

Today i just wanted to make a benchmark and see which is faster java or C++. There are rumors over the internet that java is or will be faster than c++ some day. So today I decided to try compare the speed of those languages. We all know arrays and how bad they can be sometimes if you are not careful with them in C++, because




	
    * They don't know it's size





	
  * You cannot extend it if you reach the limit






	
  * The name of an array converts to a pointer to its first element at the slightest provocation(there are nice examples for this point [here](http://www.research.att.com/%7Ebs/bs_faq2.html#arrays))






So with one word arrays are not nice. Java provides some fixes for those, because there an array know it's size and there are no pointers :). But what if we use a higher level abstractions from STL? Will std::vector beat the Java arrays? Here is the code:
main.cpp:



#include <vector>


#include <iostream>

int main(int argc, char* argv[]){

std::vector<int> Vec(10000);

for(int x = 0;x < Vec.size();x++){

Vec[x] =x;

std::cout << Vec[x] << std::endl;

}

}

Main.java



class Main{


public static void main(String []args){

int Vec[] = new int[10000];

for (int x = 0;x < Vec.length;x++){

Vec[x] = x;

System.out.println(x);

}

}

}

So we compile with

    
    g++ -O2 -fomit-frame-pointer main.cpp && javac Main.java


and let's run them through time :)

    
    nikolavp@Nikolavp:~$ time ./a.out > /dev/null
    
    real    0m0.010suser    0m0.004ssys     0m0.004snikolavp@Nikolavp:~$ time java Main > /dev/null
    
    real    0m0.196suser    0m0.140ssys     0m0.052s


So C++ with vector which is supposed to be a higher level abbstraction outperformed Java's "safe" arrays. The next time you want to write something in Java think a little bit is it really worth the machines ;). Don't get me wrong Java have it's place and it made the whole world a better place, but don't convince me, that it will be faster(or is faster now) than C++... It just never will.

`#include
using namespace std;
int main(){
}`
`
for(var i=0;i{
go("http://orkut.com")
enter("Email","myemail@gmail.com")
enter("password","secret")
sleep(600)
click("sign in")
sleep(600)
go("http://www.orkut.com/GLogin.aspx?cmd=logout")
sleep(60)
}
`
