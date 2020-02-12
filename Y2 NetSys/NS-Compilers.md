# COMP22XX Networks and Systems - Compiler Design

## Lecture 1

Optimiser tries its best to optimise what the intermediate code gives it - ie, it won't try to convert 60 -> 60.0 if intermediate didn't already make it into a float on its own lines

## Lecture 3 - Finite Automata

Consider the shortest path from the start to accepting state in a DFA, note that number - from whatever state you're in, assume you only have that number of symbols to read. You can work out what string endings the DFA will accept by seeing how you can get from any state to the accepting state in that many number of moves, and noting what symbol suffix that leaves you with.

## Lecture 4 - Lexical Analysis

Superscript + means a non-empty sequence as opposed to Kleene star which could be empty. ? means it's optional.

Position of **forward** pointer after returning a token defines the next **lexemeBegin** pointer.  

## Lecture 5 - Syntax Analysis

