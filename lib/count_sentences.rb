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
    arr = self.split
    count = 0
    arr.each do |word|
      count += 1 if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
    end
    count
  end
end