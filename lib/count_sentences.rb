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
    string = self.split(/[!+x?+x.+x]/)
    string.delete("")
    counted_string = string.count
    counted_string
  end
end