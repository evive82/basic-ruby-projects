def substrings(string, dictionary)
  dictionary.reduce({}) do |hash, word|
    word_count = string.downcase.scan(Regexp.new(word)).length
    next hash unless word_count.positive?

    hash[word] = hash.keys.include?(word) ? hash[word] + word_count : word_count
    hash
  end
end
