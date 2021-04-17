require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"

  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    arr = self.split(/[\!\?\.]/)
    arr = arr.select{|ele| ele != ""}
    arr.length
  end
end