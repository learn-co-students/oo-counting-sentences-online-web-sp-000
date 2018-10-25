require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    num1 = self.split.count(&:sentence?)
    num2 = self.split.count(&:question?)
    num3 = self.split.count(&:exclamation?)
    num1 + num2 + num3
    binding.pry
  end
end
