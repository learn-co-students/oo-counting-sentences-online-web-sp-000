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
    self.scan(/[!?\.]\s/).length==0? 0: self.scan(/[!?\.]\s/).length+1


  end
end
