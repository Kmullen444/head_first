def pig_latin(words)

  original_length = 0
  new_length      = 0 

  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts "Pig Latin word: #{new_word}"
    new_length += new_word.length
  end
  puts "Total original length: #{original_length}"
  puts "Total Pig Latin Length: #{new_length}"
end

words = ["blocks", "totally", "rock"]

pig_latin(words)