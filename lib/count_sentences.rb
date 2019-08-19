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
    #split by punctuation & select for non-empty strings
    sentences = self.split(/[.?!]/).select{|string| string.length > 0}
    sentences.length
  end
end