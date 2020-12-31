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
    raw_array=self.split(/[.?!]/)
    final_array=raw_array.delete_if {|i| i ==""}
    final_count=final_array.count
    final_count
  end
end
