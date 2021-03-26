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
    array=self.split(/[.?!]/)
    array.each_with_index do |n, i|
      if n == ""
        array.delete_at(i)
      end
    end
    array.count
  end
end