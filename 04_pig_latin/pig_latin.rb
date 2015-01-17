def translate(text)
  vowel = ['a', 'e', 'o', 'i']
  result = []
  text.split.map { |word|
    word.split(//).each_with_index.map { |letter, index|
      if vowel.include?(word[0])
        result.push(word + 'ay')
        break
      end
      
      if vowel.include?(letter)
        result.push(word[index..word.length] + word[0..index-1] + 'ay')
        break
      end
    }
  }
  result.join(' ')
end