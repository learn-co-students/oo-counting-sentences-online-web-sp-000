require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    # binding.pry
    sentences_array = self.split(/\.|\?|\!/).reject{|string| string.empty?} # create a new array and split self, rejecting all empty spaces in the array.
    return sentences_array.count # return the count of all the sentences in the split array.
  end
end
