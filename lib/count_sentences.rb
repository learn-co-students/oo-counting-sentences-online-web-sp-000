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
  element = self.split(/[.?!]/) 
  element.delete_if{|e| e.length == 0}
  element.count
  end
end