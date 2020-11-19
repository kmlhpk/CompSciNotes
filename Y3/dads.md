# L1

Probability recap. Paste some important formulae here.

# L2 

Assume there is an upper bound, call it $n$, on the amount of keys in your dictionary. The value these keys can take is usually not subject to this bound, and can be much higher.

We want a guaranteed constant time for at least lookup. Cuckoo hashing guarantees deterministic O(1) for at least Insert.

"With high probability" might look something like $P(X > (1 + \epsilon)E[X]) = \frac{1}{n^{50}}$

$r$ has to be a constant factor bigger than $n$

# L3

Loop for at most $n$ steps - if it doesn't succeed after that amount of traversals, we must be in a cycle, since there are always at most $n$ elements.

# L4


# L5

Bloom filters will not be in the exam 🦀🦀🦀

k-universal families are not as good as true random hash functions - for any k-univ family, you can only guarantee a certain collision probability (somewhere, not in a defined place) for k many elements - no more! Things go "horribly south" if you start talking about more than $k$.

Strong $k$-universality gives us a place for where the collisions occur; lets us talk about explicit images for our keys. It doesn't talk about collisions per se - just force an x onto a y, and therefore lets us do more. You can however talk about it by making y1 = y2.

$P(\exists i : h(x_1) = i \land h(x_2) = i)$ gives us $P(h(x_1) = h(x_2)$

"Whatever we do, we can only talk about 2 balls... and that sounds decidedly odd. Heheheheh."

# L6

# L7

We use $X$ in the proof for k-universality because we have to talk about all bins, or bins in general, not a specific single bin with a property we're after (such as maximal load)

# L8

k-univ proof part 2 (3?)

SKIP LISTS

Kind of like a static dictionary. Can be generalised to dynamic operations, not just search. But not for our purposes.

Reduce worst-case search time from linear to log

Skip list = just a sorted linked list with some random shortcuts.

Each element has a probability 1/2 to be "duplicated" into a second array, and all these duplicated element are linked together min -> max to create skips, and also linked down to their corresponding elements in the main array.

E(length of shortcut list) = $n/2$
E(amount of nodes examined in the second phase without a skip duplicate) = $3$

# L9

Treaps - review this content carefully, it's not hard but you weren't paying attention

# L10

Treaps cont'd

PRAM, review of different read/write concurrency permutations.

# L11

We don't have to worry about synchronisation - we can assume it's all in sync. ie. move one level up only when current level is fully populated.

# L12

Prefix sums - big example lecture, good for revision
