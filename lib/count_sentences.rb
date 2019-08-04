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
    sentence = self.split
    count = 0
    sentence.each do |words|
      count += 1 if words.end_with?(".") || words.end_with?("!") || words.end_with?("?")
      end
    count
  end
end
