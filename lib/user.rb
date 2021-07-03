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
end