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
    int = 0
    if self.sentence? || self.question? || self.exclamation?
      int = self.split(' ').count { |x| x.end_with?(".") || x.end_with?("?") || x.end_with?("!") }
    end
    return int
  end
end