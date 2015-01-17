class Book
  def title
    @title
  end

  def title=(title)
    articles = ['the', 'and', 'in', 'of', 'a', 'an']
    @title = title.split.each_with_index.map {|word, index|
      if articles.include?(word) && index > 0
        word
      else
        word.capitalize
      end
    }.join(' ')
  end
end