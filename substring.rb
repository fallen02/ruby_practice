dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(_string, dictionary)
  _string = _string.downcase
  new_string_arrar = _string.split
  result = Hash.new(0)
  new_string_arrar.each do |word|
    dictionary.each do |dictionary_word|
      if word.scan(dictionary_word).length > 0
        result[dictionary_word] += 1
      end
    end
  end

  puts result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
puts '"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1'
