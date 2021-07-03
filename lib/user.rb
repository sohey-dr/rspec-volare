class User
  attr_reader :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end
  
  def greet
    if age <= 12
      "ぼくは#{name}だよ"
    else
      "僕は#{name}です"
    end
  end

  def fizz_buzz
    if age % 15 == 0
      "fizz buzz"
    elsif age % 3 == 0
      "fizz"
    elsif age % 5 == 0
      "buzz"
    else
      age.to_s
    end
  end
end