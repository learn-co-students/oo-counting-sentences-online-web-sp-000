require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else 
      false 
    end 
  end

  def question?
    if self.end_with?("?")
      return true 
    else 
      false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false
    end 
  end

  def count_sentences
    sentence_array = self.split(/[.?!]/)
    count = sentence_array.length 
    sentence_array.each do |sentence|
      if sentence == ""
        count -= 1 
      end 
    end
    return count 
  end 
end