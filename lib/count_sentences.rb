require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    delimiters = [".","?","!"]  #define delimiters

    #take string that class is going to be called on
    #split it up using the three delimiters
    #reject any empty strings
    #count numbers of items/sentences
    self.split(Regexp.union(delimiters)).reject { |k| k.empty? }.count
  end
end
