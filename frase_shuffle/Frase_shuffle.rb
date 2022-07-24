def letter_shuffle(word)
  word.downcase.chars.shuffle.join
end

def shuffled_frase(frase)
  split_string = frase.split

  word_array = []
  split_string.each do |word|
    new_word = letter_shuffle(word)
    word_array << new_word
  end
  shuffled_words = word_array.shuffle

  shuffled_words.join(" ")
end


puts "Введите фразу: "
user_input = gets.strip
puts
puts "Вот что вышло: #{shuffled_frase(user_input)}"
