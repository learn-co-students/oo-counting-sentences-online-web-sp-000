require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    count = 0
    self.split.each {|word| count = (word.end_with?(".")||word.end_with?("!")||word.end_with?("?"))? count+1 : count}
    count
  end
end
