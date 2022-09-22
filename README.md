# ISBN13
ISBN13 class for manipulating and and checking validity of ISBN13 numbers

# Files
- https://github.com/eminarium/ISBN13/blob/main/isbn13.rb [Actual file with ISBN13 class]
- https://github.com/eminarium/ISBN13/blob/main/isbn13_test.rb [File with tests to test ISBN13 functionality]


# The algorithm is:

1. Take each digit, from left to right and multiply them alternatively by 1 and 3
2. Sum those numbers
3. Take mod 10 of the summed figure
4. Subtract 10 and if the end number is 10, make it 0

# Example for 978014300723:

1. (9×1) + (7×3) + (8×1) + (0×3) + (1×1) + (4×3) + (3×1) + (0×3) + (0×1) + (7×3) + (2×1) + (3×3)
2. 86
3. 86 mod 10 = 6
4. 10 - 6 = 4

Therefore the complete ISBN is: 9780143007234

