# COMP2231 Software Methodologies - AI Search

## Lecture 1 - State Spaces

> *We want to reduce hard problems to generic formats.*

We aim to provide a **general framework** for problem-solving that involves **searching a state space for a suitable state**.

Many of the problems we tackle are **NP-Hard**, or even harder, but we **still need solutions**. Thus, we look for **non-optimal** solutions -  we are happy to take them, and we look for some **guarantee/proof** that our solution is **always within a bound/fraction** of the optimal solution.

### State Space

A state space is a (potentially infinite) set of states with transitions between them. The states represent different states a problem can take - for example, a configuration of tiles on a Rubik's Cube.

If we are considering a state space with infinite states, our problem-solving approach will only consider a section of the states at a time, loading states into memory as and when necessary for consideration.

Two states have a transition between them, which may be directed (ie. ordered pair), if there is a legal way of going from one state to another in one "move". Transitions may have a step cost to them, which may represent time, resources, distance etc.

There may be multiple actions you can take to transition from one state to another - these actions may have different step-costs to them, but they represent the same transition.


