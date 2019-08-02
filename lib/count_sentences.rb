require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    array = []
    if self == ""
      0
    else
      array = self.split(/[.!?] /)
    end
    array.count
  end

end
