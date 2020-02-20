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
    count_arr = self.split(/[.!?]/)
    count_arr.delete_if{|e| e.length == 0}
    count_arr.count
  end
end
