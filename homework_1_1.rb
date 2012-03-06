def palindrome?(string)
  trimmed_string = string.gsub(/\W/, '').downcase
  return trimmed_string == trimmed_string.reverse
end

def count_words(string)
  words = string.split(/\b/)
  hash = Hash.new(0)
  words.each do |word|
    if word[/\w/]
      hash[word.downcase] += 1
    end
  end
  return hash
end
