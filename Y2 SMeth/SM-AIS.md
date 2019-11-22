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

### Global Search

Global search finds a path from an initial state to a goal state via state transitions. In global search, we tend to minimise or maximise step cost, as required by our problem. The solution to a global search, therefore, is a path between states.

### Local Search

In local search, we do away with the notion of actions that initiate transitions, and we no longer have step costs associated with transitions. Instead, each state has an objective cost associated with it. The solution to a local search problem is the state with the largest/smallest objective cost, as required, that is reachable from the initial state.

### Example: 8-Puzzle Problem

## Lecture 2 - Uninformed Search

### In-lecture comments

If you try to expand a node and find there are no transitions/children, you can delete it from memory (it won't help you find the goal state or the path to it). Otherwise we must store all of the search tree in BFS.

Function that determines whether you've hit a goal node // function that tells you which fringe node to expand requires path cost and depth information, thus they are stored in the tuple instead of being reconstructed after identifying goal node.

BFS is not optimal - it could terminate at a non-optimal goal node if it's at a point in the fringe that comes "before" (in terms of where BFS decides to expand first - implementation-specific) a potentially-expandable node that would give a deeper but better-path-cost goal node (that we never find because of the way BFS works)

in DFS, $d$ as in the shallowest goal node (or in fact any goal node depth), plays no complexity role. DFS often goes past the depth of the goal node when drilling down into a search-tree, therefore $d$ doesn't impact how dep DFS might go at any point.

DFS does not get stuck when the state graph has no cycles - tree.

DFS is complete when the tree is finite.

## Lecture 3 - Heuristic Search

### ILC

A* search never expands a goal node, b/c minimality is criteria for termination

## Lec 4 - A* Search

If there is a fixed $\epsilon > 0$ such that all step-costs exceed it, and the branching factor is bounded by $b$, then A* search is **complete**.

### Proof

Suppose there is a goal-node, but A* search doesn't find it.

- it terminates without finding a goal-node, or
- it does not terminate but it found the goal-node, or
- it does not terminate whatsoever

- case 1 - the tree is finite and all nodes have ben expanded. Goal node must've been on the fringe at some point, and it would;ve had minimal $f$ value, so it would;ve had an expansion attempt - this contradicts th case

### ILC

## Lecture 5 - Heuristic Derivation

## Lecture 6 - Local Search

### ILC

Bad formulation of clique problem - transition function would only stay within one joint graph, but if your G was a disjoint union and you start in one blob, the largest clique might live in the other blob and you'd never find it.

Improved by empty cliques - $\empty$ is a legitimate clique and would allow you to move between the two parts of a disjoint graph

## Lecture 7 - CSP

