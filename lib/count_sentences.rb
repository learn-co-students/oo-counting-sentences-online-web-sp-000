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
    separate = self.split(/[.?!]/).reject {|x| x.empty?}
    separate.count
  end
end
