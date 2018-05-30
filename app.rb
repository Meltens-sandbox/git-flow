class App
  def initialize(config)
    @config = config
    @name = @config[:name]
    @age  = @config[:age]
    @hobbies = @config[:hobbies]
  end

  def run
    puts "Name: #{ call_name(@name) }"
    puts "Age: #{ call_age(@age) }"
    puts "Hobbies: #{ call_hobbies(@hobbies) }"
  end

  private
  def call_name(name)
    return name
  end

  def call_age(age)
    return age
  end

  def call_hobbies(hobbies)
    return hobbies
  end
end

App.new({
  name: "Meltens",
  age: 18,
  hobbies: ["Programming", "Cooking", "Reading book"]
}).run
