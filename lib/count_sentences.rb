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
    array = self.split(/[!?.]/)
    sentences_array = array.delete_if{|x| x == ""}
    sentences_array.count
  end
  
end