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
    if self == "" || self == nil
      0
    else
    point = self.split(".").size
     self.split("!").size - 1 + point
    end

  end
end
