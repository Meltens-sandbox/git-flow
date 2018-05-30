class App
  def initialize(config)
    @config = config
    @name = @config[:name]
    @age  = @config[:age]
  end

  def run
    call_name(@name)
    call_age(@age)
  end

  private
  def call_name(name)
    puts name
  end

  def call_age(age)
    puts age
  end
end

App.new({
  name: "Meltens",
  age: 18
}).run
