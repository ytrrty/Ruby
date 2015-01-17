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
end