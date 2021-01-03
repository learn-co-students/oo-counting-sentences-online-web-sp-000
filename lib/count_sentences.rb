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
    split_sentences = self.split(/[.?!]/)
    if split_sentences.include?("")
      split_sentences.delete("")
    end
    split_sentences.count
  end
end