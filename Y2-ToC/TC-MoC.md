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

Conventional computational devices are not as powerful as Turing Machines. TMs have infinite tape, but finite unbounded content.

Infinite = unending.

Unbounded = finite, but length neither defined nor bounded.

## Week 9 - Kolmogorov Complexity

complexity of binary strings

Def: \<M>, y | represents X if M(y) = x.

K(x) is the length of the smallest representation of X in terms of \<M> and y

K(0^n) = log_2(n) + c

log_2(n) is the length of n encoded in binary; c is a constant representing the size of a machine that prints $ y $ zeroes.

Upper bound of K(x) for any: K(x) $\leq \mid x \mid + c$ 

how many strings of length n are compressible into at least n-c-1 (n-c or better) for any constant c and big enough n?

sum 1 + 2 + ... + 2^n-c-1 = 2^n-c -1  -> pick an n-bit string uniformly at random, the possibility that it is compressible to better than n-c is (2^n-c - 1)/(2^n) approx equal 1/2^c

Given a binary string x and a number l, Is K(x) leq l?

Run all representations up to size l, see if they produce x.

This doesn't work - trying any representation means running a TM on an input - you can't tell whether the TM will terminate on an input or not. We can't make a TM that we know will terminate because the definition just says "some turing machines"

Thus leq l problem is semi-decidable but not decidable.