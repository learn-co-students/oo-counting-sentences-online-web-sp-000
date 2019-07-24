require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true :  false
  end

  def question?
    self.end_with?("?") ? true :  false
  end

  def exclamation?
    self.end_with?("!") ? true :  false
  end

  def count_sentences
    punctuation = '.?!'
    count = 0
    self.split(" ").each { |word| count += 1 if punctuation.include?(word[-1]) }
    count
  end
end
