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

  # call method on a string (self) and get back a count of sentences in the string
  # split it into individual sentences by any character; reject any strings that are empty
  def count_sentences
        self.split(/[.!?]/).reject {|x| x.empty?}.size
  end

end
