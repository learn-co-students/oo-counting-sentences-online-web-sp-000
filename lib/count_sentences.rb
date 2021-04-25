require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false 
    end 
  end
#
#
  def question?
    if self.end_with?("?")
      true 
    else
      false
    end
  end
#
#
  def exclamation?
 
  end
#
#
  def count_sentences
    self_count = []
    if self.end_with?("." || "?" || "!")
      self.split
      self.count
    end
    
  end
  
  
end