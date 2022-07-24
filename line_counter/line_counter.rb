file = ARGV[0]

if file == nil
  abort "Укажите имя требуемого файла"
end

unless File.exist?(file)
  abort "Файл не найден"
end

count_lines = File.readlines(file)

empty_lines_counter = 0
last_5_lines = []
count_lines.each_with_index do |line, index|
  empty_lines_counter =+ 1 if line == "\n"

  last_5_lines << line if count_lines.size - index <= 5
end

puts "Открыли файл #{file}"
puts "Всего строк: #{count_lines.size}"
puts "Пустых строк: #{empty_lines_counter}"
puts "Последние 5 строк файла:"
puts
puts last_5_lines



