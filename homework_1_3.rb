def combine_anagrams(words)
  output_array = []
  words.each do |word|
    word_applied = false
    output_array.each do |anagram_array|
      if anagram_array[0].downcase.chars.sort == word.downcase.chars.sort
        anagram_array << word
        word_applied = true
      end
    end
    if not word_applied
      output_array << [word]
    end
  end
  return output_array
end
