def reverser
  yield.split.map {|word|
    word.reverse
  }.join(' ')
end

def adder(n=1)
  yield + n
end

def repeater(n=1)
  for i in 1..n do yield end
end