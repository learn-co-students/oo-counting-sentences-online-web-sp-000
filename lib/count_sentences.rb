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
    split_arr = self.split(/[!*.*?*]/)
    counter = 0
    split_arr.each do |sentence|
      if sentence.chomp == ""
        next
      else
        counter += 1
      end
    end
    counter
  end
end
