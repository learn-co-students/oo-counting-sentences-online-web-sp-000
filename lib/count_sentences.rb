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
    array = self.strip.split(/(\.|\?|\!)/)
    number_of_sentences = 0
    
    array.each do |sentence|
      if sentence != "." && sentence != "?" && sentence != "!" && sentence.length > 0
        number_of_sentences += 1
      end
    end
    number_of_sentences
  end
end