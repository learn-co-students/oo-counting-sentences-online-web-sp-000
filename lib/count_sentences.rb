require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true 
      return true 
    else
      return false 
    end 
  end

  def question?
    if self.end_with?("?") == true 
      return true 
    else
      return false 
    end 
  end

  def exclamation?
  if self.end_with?("!") == true 
      return true 
    else
      return false 
    end 
  end

  def count_sentences
  split_string = self.split(/[\!\.\?]/)
  split_string.delete("")
  return split_string.length
  
  end
end