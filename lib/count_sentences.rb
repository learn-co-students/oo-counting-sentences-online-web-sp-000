require 'pry'

class String

# return true if a string ends with a sentence, false if it doesn't
# use #self keyword in body to refer to string on which the method is being called
# use #end_with? to determine final character
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end
# use #self to refer to string on which it is called
# count the sentences in a string
# split the string on appropriate punctuation - makes array
# count the number of elements that result
# account for edge cases - commas, ellipses, etc.
  def count_sentences
    array = self.split(/[.!?]\s/)
    array.count
  end
end
