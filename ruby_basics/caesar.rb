def caesar_cipher(string, shift)
    array = string.split("")
    p array
    return array

end

puts "Enter a phrase to run through a Caesar Cipher:"
phrase = gets.chomp

puts "Enter a shift factor:"
shift_factor = gets.chomp.to_i


puts caesar_cipher(phrase, shift_factor)

