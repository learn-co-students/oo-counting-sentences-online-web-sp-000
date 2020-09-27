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
    count = 0
    if self.length > 0
      sentence = self.split
      sentence.each do |part|
        if part.end_with?(".") || part.end_with?("!") || part.end_with?("?")
          count += 1
        end
      end
      return count
    else
      return 0
    end
  end
end