# COMP22XX Theory of Computation - Algorithms and Complexity

## Lecture 1 - Asymptotic Revision

Algorithm: Computational procedure that takes some value(s) as input and produces some value(s) as output.

Problem: Specifies desired relationship between input and output

An algorithm is correct if for every input instance it halts with the correct output.

A correct algorithm *solves* the problem - we only consider correct algorithms in this course.

## **GRAB ASYMPTOTIC NOTATION ALGEBRA FROM ADS**

## Lecture 2 - Greedy Algorithms

### In-lecture comments

greedy counter-example for 0-1 variant
W = 10
w  2  6   8
v  8  18  20
r  4  3   2.5

W = 6
w  2  6    6
v  4  5    5
r  2  5/6  5/6

in the fractional variant, we can merge items with equal ratios by taking the sum of their weight and value - this doesn't cause us any problems because we can take as big a fraction as we like of them, even if their singular weight exceeds the knapsack capacity.

## Lecture 3 - Divide and Conquer

### ILC

The join, G1 x G2, of G1 and G2 is G1 + G2 but all the vertices of G1 and G2 are joined (complete!)
