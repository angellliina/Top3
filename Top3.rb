def top3(text)
  words = text.downcase.scan(/[a-z']+/)
  frequency = Hash.new(0)
  words.each { |word| frequency[word] += 1 }
  top_words = frequency.sort_by { |word, count| -count }.first(3).map { |word, count| word }
  top_words = frequency.keys if frequency.keys.length < 3
  top_words
end

puts top3("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
