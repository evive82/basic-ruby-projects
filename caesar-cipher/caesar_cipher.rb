def caesar_cipher(string, shift = 0)
  ciphered = string.chars.map do |char|
    next char unless char.match?(/[A-Za-z]/)

    shifted = char.ord + (shift % 26)
    if (char.ord.between?(65, 90) && shifted > 90) ||
       (char.ord.between?(97, 122) && shifted > 122)
      shifted -= 26
    end
    shifted.chr
  end
  ciphered.join
end
