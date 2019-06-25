require 'pry'

class String

  def sentence?
    self.end_with?(".")         #'self' in the body of this method to refer to the string on which the method is being called
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.!?]/).delete_if {|string| string.size < 2}.size   #splits the string on any and all '. ! ?'
                                                          #deletes every element of self for which block evaluates to true.
  end
    #self.string.length
end
