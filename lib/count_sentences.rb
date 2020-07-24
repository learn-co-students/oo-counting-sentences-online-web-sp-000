require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self.include?('. ' || '? ' || '! ')
      words_array = self.split(/\S[.!?]/) 
      counts = words_array.count
      counts
    else 
      count = 0 
      count
    end  
  end
end