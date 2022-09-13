class Isbn13

    # Input: 12 digit string isbn
    def initialize(isbn13)
        @isbn13 = isbn13
    end

    # Calculates the last digit (check digit) of the isbn13
    def calculate_check_digit
        # Split digits (except the last check digit) and convert all to integer
        num_array = @isbn13[0..-2].split('').map(&:to_i)
        sum = num_array.each_with_index.reduce(0){|sum, (el, idx)| (idx % 2 == 0) ? (sum + el) : (sum + (el * 3)) }
        digit = 10 - (sum % 10)
        return (digit == 10) ? 0 : digit
    end
    
    def valid?
        calculate_check_digit == @isbn13[-1].to_i
    end

end

# The algorithm is:

# 1. Take each digit, from left to right and multiply them alternatively by 1 and 3
# 2. Sum those numbers
# 3. Take mod 10 of the summed figure
# 4. Subtract 10 and if the end number is 10, make it 0

# Example for 978014300723:

# 1. (9×1) + (7×3) + (8×1) + (0×3) + (1×1) + (4×3) + (3×1) + (0×3) + (0×1) + (7×3) + (2×1) + (3×3)
# 2. 86
# 3. 86 mod 10 = 6
# 4. 10 - 6 = 4

# Therefore the complete ISBN is: 9780143007234