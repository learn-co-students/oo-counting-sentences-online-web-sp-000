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
    counter = 0
    split_array = self.split(" ")
    split_array.each do |i|
      if i.end_with?(".") || i.end_with?("?") ||i.end_with?("!")
        counter +=1
      end
    end

      counter
  end
end
