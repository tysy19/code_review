def variable_defined(variable)
  if defined?(variable)
    puts "Переменная #{variable} определена."
  else
    puts "Переменная #{variable} не определена."
  end
end

а = "some_string"

variable_defined(a)
variable_defined(b)
