require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    elsif !self.end_with?(".")
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    elsif !self.end_with?("?")
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    elsif !self.end_with?("!")
      false
    end
  end

  def count_sentences
     array = self.split(/[.?!]/).reject {|str| str.empty?}
     array.size
  end
end
