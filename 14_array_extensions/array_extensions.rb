class Array
  def sum
    s = 0
    self.each {|a| s += a }
    return s
  end

  def square
    self.map {|a| a ** 2 }
  end

  def square!
    self.each_index {|index| self[index]**=2 }
  end
end