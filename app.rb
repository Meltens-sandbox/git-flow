class App
  def initialize(config)
    @config = config
    @name = @config[:name]
    @age  = @config[:age]
    @hobby = @config[:hobby]
  end

  def run
    call_name(@name)
    call_age(@age)
    call_hobby(@hobby)
  end

  private
  def call_name(name)
    puts name
  end

  def call_age(age)
    puts age
  end

  def call_hobby(hobby)
    puts hobby
  end
end

App.new({
  name: "Meltens",
  age: 18,
  hobby: "Programming"
}).run
