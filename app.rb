class App
  def initialize(config)
    @config = config
    @name = @config[:name]
    @age  = @config[:age]
    @hobbies = @config[:hobbies]
  end

  def run
    call_name(@name)
    call_age(@age)
    call_hobbies(@hobbies)
  end

  private
  def call_name(name)
    puts name
  end

  def call_age(age)
    puts age
  end

  def call_hobbies(hobbies)
    puts hobbies
  end
end

App.new({
  name: "Meltens",
  age: 18,
  hobbies: ["Programming", "Cooking", "Reading book"]
}).run
