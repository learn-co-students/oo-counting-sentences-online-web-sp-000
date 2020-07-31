require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else
      false
    end
  end

  def count_sentences
    # split the string on all periods, question marks and exclamation marks.
    # remove empty arrays (.compact)
    # count the number of elements that results from that split
    self.split(/\.|\?|\!/).reject{|s| s==""}.count
  end
end