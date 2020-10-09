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
    strings = self.split(/[.|?|!]/)
    count = 0;
    strings.each do |item|
      if(item.size > 0)
        count += 1
      end
    end
    puts count
    count
  end
end
