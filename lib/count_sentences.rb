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
    str_arr = self.split(/[.!?]/)
    count = 0
    str_arr.each do |str|
      if str != ""
        count += 1
      end
    end
    count
  end
end
