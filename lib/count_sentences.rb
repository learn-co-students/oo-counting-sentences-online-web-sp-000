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
    temp = self.split(/[.?!]/)
    temp.each_with_index do |sentence, i|
      if sentence == ""
        temp.delete_at(i)
      end
    end
    temp.length
  end
end
