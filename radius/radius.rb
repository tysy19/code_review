def circle_area(radius)
  circle_area_formula =
  (radius**2) * Math::PI
  circle_area_formula.to_f
end

puts "Сколько у Вас кругов?"
numbers_of_circle = gets.strip.to_i

if numbers_of_circle <= 0
  abort "Маловато, конечно..."
end

1.upto(numbers_of_circle) do |circle_question|

print "Введите радиус круга № #{circle_question} : "
user_input = gets.strip.to_i

until user_input > 0
  puts "Введите нормальное число, а не фиХню!"
  user_input = gets.strip.to_i
end

puts "Площадь круга: #{circle_area(user_input)}"
end

