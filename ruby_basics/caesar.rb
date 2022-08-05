def caesar_cipher(string, shift)
    alpha_array = 'abcdefghijklmnopqrstuvwxyz'.split("")
    string_array = string.split("")
    result = []
    
    i = 0
    until i == string.length
        letter = string_array[i]
        alpha_idx = alpha_array.find_index(letter).to_i
        shift_idx = (alpha_idx + shift) % 26 # handles any type of shift factor above the length of the alphabet

        if alpha_array.any?(letter) == true # checks to see if letter is in alpha_array
            if letter != letter.capitalize
                result << alpha_array[shift_idx] # if it isn't capitalized, use the letter IN alpha_array
            elsif letter == letter.capitalize
                 result << alpha_array[shift_idx] # if it is, do something to make it capital
            end
        elsif result << letter # otherwise, this just passes the character along (!@#$%, etc.)
        end

        i+=1
    end

    return result.join
end

# puts "Enter a phrase to run through a Caesar Cipher:"
# phrase = gets.chomp

# puts "Enter a shift factor:"
# shift_factor = gets.chomp.to_i

phrase = "TeStInG!@# $%^THIS *)(out"
shift_factor = 27

puts "The new phrase is: " + caesar_cipher(phrase, shift_factor)



