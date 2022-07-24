start = 0
finish = 15
number = rand(0..15)
tries = 3
while tries > 0
  puts "Угадайте число от 0 до 15! У вас #{tries} попытки"
    guess = gets.strip
  if !(start.to_s..finish.to_s).include?(guess) && tries != 0
    puts "Нужно ввести число от 0 до 15"
  next

  end
  tries -= 1
  guess_integer = guess.to_i
  guess_check = (number - guess_integer).abs
  if guess_check == 0
    puts "Да! Вы угадали!"
  break

  end
  if tries == 0
    puts "Неверно, правильно #{number}"
  break

  end
  if guess_check <= 2
    puts "Тепло"
  else
    puts "Холодно"
  end
  if guess_integer > number
    puts "Нужно поменьше"
  else guess_integer < number
    puts "Нужно побольше"
  end
end

