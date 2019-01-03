require 'pry'

class String

  def sentence?
  sentence_array = self.split
    # if sentence_array[-1][-1] == "."
    #   true
    # else
    #   false
    # end
    self.end_with?(".")

  end

  def question?
    # sentence_array = self.split
    # if sentence_array[-1][-1] == "?"
    #   true
    # else
    #   false
    # end
    self.end_with?("?")

  end

  def exclamation?
    # sentence_array = self.split
    # if sentence_array[-1][-1] == "!"
    #   true
    # else
    #   false
    # end
    self.end_with?("!")
  end

def count_sentences
    # sentence_array = self.split(/[.?!]/)
    # sentence_array.reject! { |c| c.empty? }
    # sentence_array.count
     self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
