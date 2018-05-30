class App
  def initialize(config)
    @config = config
    @name = @config[:name]
    @age  = @config[:age]
    @sex  = @config[:sex]
    @hobbies = @config[:hobbies]
  end

  def run
    puts "Name: #{ call_name(@name, @sex) }"
    puts "Age: #{ call_age(@age) }"
    puts "Hobbies: #{ call_hobbies(@hobbies) }"
  end

  private
  def call_name(name, sex)
    if sex == "men"
      return "Mr. #{name}"
    end
    return "Mia. #{name}"
  end

  def call_age(age)
    return "#{age} year the old"
  end

  def call_hobbies(hobbies)
    return hobbies.join(', ')
  end
end

App.new({
  name: "Meltens",
  age: 18,
  sex: "men",
  hobbies: ["Programming", "Cooking", "Reading book"]
}).run
