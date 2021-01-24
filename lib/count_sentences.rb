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
    split_1 = []
    split_1 = self.split(/\.|\?|\!/)
    split_1.delete("")
    split_1.count
    #binding.pry
  end
end
