def caesar_cipher(string, shift)
    alpha_array = 'abcdefghijklmnopqrstuvwxyz'.split("")
    string_array = string.split("")
    result = []

    i = 0
    until i == string.length
        letter = string_array[i]
        if alpha_array.any?(letter) == true
            # need to make sure shift always cons to be <= 24, use modulus for remainder (%26)
        alpha_idx = alpha_array.find_index(letter) + shift
            if letter != letter.capitalize
                result << alpha_array[alpha_idx].downcase
            elsif letter == letter.capitalize
                 result << alpha_array[alpha_idx].capitalize
            end
        elsif result << letter
        end
        i+=1
    end

    return result.join
end

# puts "Enter a phrase to run through a Caesar Cipher:"
# phrase = gets.chomp

# puts "Enter a shift factor:"
# shift_factor = gets.chomp.to_i

phrase = "z"
shift_factor = 1

puts "The new phrase is: " + caesar_cipher(phrase, shift_factor)

puts 27 % 26

