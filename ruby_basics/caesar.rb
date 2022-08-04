def caesar_cipher(string, shift)
    alpha_array = 'abcdefghijklmnopqrstuvwxyz'.split("")
    string_array = string.split("")
    new_string = []

    i = 0
    until i == string.length
        letter = string_array[i]
        # adds non-alpha_array characters, including capitals
        if alpha_array.any?(letter) == false
            new_string << letter
        else
            # determines if upper or lower case
            alpha_idx = alpha_array.find_index(letter) + shift
            if letter != letter.capitalize
                new_string << alpha_array[alpha_idx].downcase
            else
                new_string << alpha_array[alpha_idx].capitalize
            end
        end
        i+=1
    end

    return new_string.join
end

# puts "Enter a phrase to run through a Caesar Cipher:"
# phrase = gets.chomp

# puts "Enter a shift factor:"
# shift_factor = gets.chomp.to_i

phrase = "!sharing!"
shift_factor = 1

puts "The new phrase is: " + caesar_cipher(phrase, shift_factor)

