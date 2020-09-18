require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
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
    string_split = self.split
    #using regex to identify a string that ends with the following punctuation
    string_split.count {|s| s =~ /[\.!?]$/   }
  end
end