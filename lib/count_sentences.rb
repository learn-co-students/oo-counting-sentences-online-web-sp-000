require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end

  end

  def count_sentences
    #split the string over ending sentence punctuation marks
    splitted = self.split(/[.!?]/)
    #if there are any empty arrays after interation, then get rid of those empty arrays
    no_repeats = splitted.reject {|x| x.empty?}
    #capture the size of the split array, once finalized with the correct types of arrays
    no_repeats.size
  end
end
