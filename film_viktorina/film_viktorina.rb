require_relative 'lib/film'
file_path = Dir["#{__dir__}/data/*.txt"]

NUMBER_OF_VARIANTS = 3
NUMBER_OF_FILMS = 5

films =
  file_path.map do |file|
    lines = File.readlines(file, chomp: true)
    Film.new(lines[0], lines[1], lines[2])
  end

directors = films.map { |movies| movies.director }.uniq

correct_answer = 0

puts "Добрый день, любитель кино!"
puts "Давай посмотрим, хорошо ли ты знаешь какой режиссер какой фильм снял?"

films.sample(NUMBER_OF_FILMS).each do |film|
  puts
  puts "Кто снял #{film.name} #{film.year} года?"
  correct_director = film.director

  directors_without_correct_director =
    directors.reject { |director| director == correct_director }

  variants =
    directors_without_correct_director.sample(NUMBER_OF_VARIANTS) << correct_director
  variants.shuffle!
  variants.each.with_index(1) { |variant, index| puts "#{index}. #{variant}" }

  user_guess = STDIN.gets.to_i

  until (1..(NUMBER_OF_VARIANTS + 1)).include?(user_guess)
    puts "Введите варинат цифрой от 1 до 4!"
    user_guess = STDIN.gets.to_i
  end

  if variants.index(correct_director) == user_guess - 1
    puts "Верно!"
    correct_answer += 1
  else
    puts "Ну, нет! Правильный ответ: #{correct_director}"
  end
end

puts "Вы угадали #{correct_answer} режиссёров из #{NUMBER_OF_FILMS}"
