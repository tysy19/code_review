class Film
  attr_reader :name, :director, :year

  def initialize(name, director, year)
    @name = name
    @director = director
    @year = year
  end
end
