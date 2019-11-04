# COMP2181 Theory of Computation - Models of Computation

## Lectures 1-3

A Turing Machine is a 7-tuple:

$(Q, \Sigma, \Gamma, \delta, q_0, q_{accept}, q_{reject})$

where:

Symbol       | Meaning
--           | --
$Q$          | The set of states
$\Sigma$     | The input alphabet, st. $\sqcup \notin \Sigma$
$\Gamma$     | The tape alphabet, st. $\Sigma \subset \Gamma$ and $\sqcup \in \Gamma$
$\delta$     | Transition function $\delta : Q \times \Gamma \implies Q \times \Gamma \times \{L,R\}$
$q_0$        | The start state, $q_0 \in Q$
$q_{accept}$ | The accept state, $q_{accept} \in Q$
$q_{reject}$ | The reject state, $q_{reject} \in Q$ ($q_{reject} \neq q_{accept}$)

## Lecture 4

Conventional computational devices are not as powerful as Turing Machines - TMs have infinite tape, but finite unbounded content.

Infinite = unending.

Unbounded = finite, but length neither defined nor bounded.


