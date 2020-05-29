# COMP22XX Networks and Systems - Compiler Design

## Lecture 1

Optimiser tries its best to optimise what the intermediate code gives it - ie, it won't try to convert 60 -> 60.0 if intermediate didn't already make it into a float.

## Lecture 3 - Finite Automata

Consider the shortest path from the start to accepting state in a DFA, note that number - from whatever state you're in, assume you only have that number of symbols to read. You can work out what string endings the DFA will accept by seeing how you can get from any state to the accepting state in that many number of moves, and noting what symbol suffix that leaves you with.

## Lecture 4 - Lexical Analysis

Superscript + means a non-empty sequence as opposed to Kleene star which could be empty. ? means it's optional.

Position of **forward** pointer after returning a token defines the next **lexemeBegin** pointer. 

## Lecture 6 - Parse Trees and Ambiguity, Top Down Analysis

Recursive descent parsing can parse more grammars (possibly any context-free) than predictive parsing.

## Lecture 7 - L6 Cont'd

Inner loop removes $A_i$ -> $A_j \gamma$ with $j < i$

You can order your terminals in such a way that this does not even need to happen

eg with EFT arithmetic grammar, if you say E = 1, T=2, F=3, that eliminates need for inner loop

Outer loop ends with elimination of all immediate left recursions 

eg E -> E+T | T goes to:
- E -> TE'
- E' -> +TE' | $\epsilon$
