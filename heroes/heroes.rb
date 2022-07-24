heroes_full = [
  'Бэтмен', 'batman', 'Jerry', 'Джерри', 'Фродо', 'Хабиб', 'Монтеки',
  'Гарри Поттер', 'Harry Potter', 'Люк Скайуокер', 'Luke Skywalker'
]

heroes = heroes_full - ["batman", "Jerry", "Harry Potter", "Luke Skywalker"]
enemies = ['Джокер', 'Том', 'Саурон', 'МакГрегор', 'Капулетти', 'Волан-Де-Морт', 'Дарт Вейдер']

puts "Врага какого персонажа Вы хотите узнать?"
puts "У нас тут имеются: #{heroes.join(", ")}"
user_choice = gets.strip.downcase

case user_choice
when 'бэтмен', 'batman' then puts enemies[0]
when 'jerry', 'джерри' then  puts enemies[1]
when 'фродо' then puts enemies[2]
when 'хабиб' then puts enemies[3]
when 'мнтеки' then puts enemies[4]
when 'гарри поттер', 'harry potter' then puts enemies[5]
when 'люк скайуокер', 'luke skywalker' then puts enemies[6]
else
  puts "Враг не найден!"
end
