require 'pry'

class String

  def sentence?
    if(self.end_with?(".") == true)
      return true
    elsif (self.end_with?(".") == false)   
      return false
    else
      return false
    end 
  end

  def question?
    if(self.end_with?("?") == true)
      return true
    elsif (self.end_with?("?") == false)   
      return false
    else
      return false
    end 
  end

  def exclamation?
    if(self.end_with?("!") == true)
      return true
    elsif (self.end_with?("!") == false)   
      return false
    else
      return false
    end 
  end

  def count_sentences
    split_arr = self.strip.split(/(\.|\?|\!)/)
    num_sentences = split_arr.count {|sentence| sentence.length > 1}
    return num_sentences
  end
end