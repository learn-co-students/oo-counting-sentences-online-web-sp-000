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
    #need to evaluate self. split on any punctuation and then count_sentences
    sentences = self.split(/[.?!]/).reject(&:empty?)

    sentences.count
  end
end
