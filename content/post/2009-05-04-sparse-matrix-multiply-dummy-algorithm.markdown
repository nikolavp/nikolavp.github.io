---
author: nikolavp
comments: true
date: 2009-05-04 20:44:00+00:00
layout: post
slug: sparse-matrix-multiply-dummy-algorithm
title: Sparse matrix multiply dummy algorithm
wordpress_id: 34
categories:
- eclipse
- java
- programming
---

Today almost the half an hour I was trying to write that algorithm which multiplies two sparse matrix. At the end this is what I've got. The matrix is represented as a linkedlist of triples, because this is how they want it in our university. There were some mistakes in the code like Sparce is not with "s", but those are pretty much syntax mistakes and i didn't want to make changes for our teacher :).




    
    
    public NumericMatrix multWith(SparseMatrix mat) throws CannotMult, 
       OutOfMatrixRange {
       if (!canMult(mat)){
           throw new CannotMult();
       }
       SparseMatrix result = new SparseMatrix(this.rows, mat.columns);
       if (body.isEmpty() || mat.body.isEmpty()){
           return result;
       }
       Iterator<triple> itForThis = this.body.iterator();
    
       while (itForThis.hasNext()) {
           Triple thisElement = itForThis.next();
           Iterator<triple> itForMat = mat.body.iterator();
           while (itForMat.hasNext()) {
               Triple thatElement = itForMat.next();
               if (thatElement.i > thisElement.j){
                   break;
               }
               if (thisElement.j == thatElement.i) {
                   double value = result.elementAt(thisElement.i,
                           thatElement.j);
                   result.setElement(thisElement.i, thatElement.j, value
                           + thisElement.element * thatElement.element);
               }
           }
       }
       return result;
    }
    
    


Sorry for the bad code formatting but java is kind of verbose :(. All in all the code is not so nice but it was the only thing that came up and worked so I am posting it here if someone need it, because there wasn't good simple code for that algorithm. I didn't have the time to look at performance libraries and how they implement that, but I read some interesting stuff on wikipedia.com. I didn't know that there was an algorthm that can multiply two Ordinary matrices in O(n^2.376). Take a look at the [page](http://en.wikipedia.org/wiki/Coppersmith%E2%80%93Winograd_algorithm). If you find some free materials about the algorithm please let me know I will be glad to look into it, because I might need it for some graphic stuff I will be doing next year :)

**UPDATE:** Fixed some stuff and chan the name to SparseMatrix to be really normal :)


