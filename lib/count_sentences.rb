


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
    #split by periods, exclamations, questions
    array = self.split(/[!?.]/)
    #loop through arr of splits
    array.each { |element|
      element.length > 1 ? count +=1 : count}
    # if arr is longer than 0 count up
    return count
  end
end
