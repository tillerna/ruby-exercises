def caesar_cipher(string, shift)
    alpha_array = 'abcdefghijklmnopqrstuvwxyz'.split("")
    string_array = string.split("")
    result = []
    i = 0
    until i == string.length
        letter = string_array[i]
        alpha_idx = alpha_array.find_index(letter).to_i
        shift_idx = (alpha_idx + shift) % 26 # handles shift factor > 26
        if alpha_array.any?(letter) == true # checks to see if letter is in alpha_array
            result << alpha_array[shift_idx] # if it isn't capitalized, use the letter IN alpha_array
        elsif alpha_array.any?(letter.downcase) == true # handles capitals
            alpha_idx = alpha_array.find_index(letter.downcase).to_i
            shift_idx = (alpha_idx + shift) % 26
            result << alpha_array[shift_idx].upcase
        else result << letter # otherwise, this just passes the character along (!@#$%, etc.)
        end
        i+=1
    end
    return result.join
end

# puts "Enter a phrase to run through a Caesar Cipher:"
# phrase = gets.chomp

# puts "Enter a shift factor:"
# shift_factor = gets.chomp.to_i

phrase = "ABCdef!@# TesTing!@$"
shift_factor = -1

puts "The new phrase is: " + caesar_cipher(phrase, shift_factor)



