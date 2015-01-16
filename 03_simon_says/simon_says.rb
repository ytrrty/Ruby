def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, n=2)
  ((text + ' ')*n)[0..-2]
end

def start_of_word(text, n)
  text[0..n-1]
end

def first_word(text)
  text.split[0]
end

def titleize(text)
  little_words = ['the', 'over', 'and']
  text.split.each_with_index{|word, index|
    if little_words.include?(word) && index != 0
      word
    else
      word.capitalize!
    end
  }.join(' ')
end