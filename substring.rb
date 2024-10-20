def substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |dictionary_word|
    if string.include?(dictionary_word)
      result[dictionary_word] += string.scan(dictionary_word).length
    end
  end

  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary)
