# Data Compression

## L1 

Huffman/prefix codes

The more skewed the probability distribution of the source alphabet, the more compact we can make the resulting code.

## L2

Subdivision location doesn't matter, so long as you keep it proportional to the frequency

## L3

DEFLATE: Do structural then statistical compression, because if you were to work on text, "characters" (words) have fixed length - easy to match patterns. If you do Huffman first, you'd get a seq of bits, with codewords of diff length - LZ matching would be much more difficult.

## L9

🎵 Let's all meet up in JPEG 2000
won't it be strange when we're all fully groooo-ooown 🎵

---
# Cryptography

---
# Error-Correcting Codes

## L20

wooOOoOOo that's a sphere