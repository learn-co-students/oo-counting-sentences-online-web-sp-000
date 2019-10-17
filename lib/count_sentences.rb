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
    sentence_array = self.split
    count = 0
    sentence_array.each do |word|
      if word[word.size - 1].end_with?(".")
        count += 1
      elsif word[word.size - 1].end_with?("?")
        count += 1
      elsif word[word.size - 1].end_with?("!")
        count +=1
      end
    end
    count
  end


end
