require 'pry'

class String

  def sentence?

    if self.end_with?(".") # Checks self to see if it ends with a periods
      return true # If it does, return true value
    else
      return false # Otherwise, return false value
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

    our_split = self.split # First, we take out string and split each word to fill an array.
    our_split.count {|x| x[-1] == "." || x[-1] == "!" || x[-1] == "?"} # Then we use count to iterate over each word to check the last character.
    # 'x[-1]' returns the last character of the word in question. We check and see if that last character equals any of our punctuation that ends a sentence.
    # If it matches, +1 is added to the count. A final tally is returned once the whole array has been checked.

  end

end
