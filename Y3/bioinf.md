# L2

Reduce space complexity of O(mn) by increasing time complexity - time is usually less expensive that space.

Make a column-by-column sweep of the whole matrix - for the second half ($\geq n/2$, $n$ being the length of the horizontal matrix), keep a pointer for each cell, $k$ which points to $c(i,j)$ = the point where the global alignment crosses the column $j = n/2$.

This only uses linear space.

$cnm$ is the time taken to find the single midpoint we're interested in.

We get a reduction from quadratic to linear space at the cost of doubling the time complexity (nm -> 2cnm - though still quadratic, asymptotically)

No backtracking, but the alignment is formed by the recursion on two halves about the midpoint.

Base case of two columns returns the alignment of two columns, then as it traverse back up the stack it concatenates those alignments connected through the pointer.


# L3

Go back and review - this stuff was difficult.

# L4

Probabilistic methods (BLAST/FASTA)

# L5

A graph is strongly connected iff all the nodes are recurrent.

Any time-step you revisit state $s$ has to be divisible by the period, but not every multiple of the period is a time-step you can revisit the state.