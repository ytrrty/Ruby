class Temperature

  def initialize(option)
    if option.key?(:f)
      @fahrenheit = option[:f]
      @celsius = (@fahrenheit - 32) * (5.0 / 9)
    else
      @celsius = option[:c]
      @fahrenheit = @celsius * (9.0 / 5) + 32
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

  def self.from_celsius(option)
    Temperature.new({c: option})
  end

  def self.from_fahrenheit(option)
    Temperature.new({f: option})
  end

end

class Celsius < Temperature

  def initialize(option)
    super({c: option})
  end

end

class Fahrenheit < Temperature

  def initialize(option)
    super({f: option})
  end

end
