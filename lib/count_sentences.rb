class String

  def sentence?
    if self[-1] == "."
      true 
    else 
      false 
    end
  end

  def question?
    if self[-1] == "?"
      true 
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true 
    else
      false
    end
  end

  def count_sentences
    sentence_count = 0
    self.split.each do |word|
      if word[-1] == "." || word[-1] == "?" || word[-1] == "!" 
        sentence_count+=1
      end
    end
    sentence_count
  end
end