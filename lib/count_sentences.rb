require 'pry'

class String

#returns true if the string that you are calling this method on ends in a period.
#returns false if the string that you are calling this method on does NOT end in a period.

  def sentence?
    self.end_with?(".")
  end

#returns true if the string that you are calling this method on ends in a question mark.
#returns false if the string that you are calling this method on does NOT end in question mark.

  def question?
    self.end_with?("?")
  end

#returns true if the string that you are calling this method on ends in an exclamation mark
#returns false if the string that you are calling this method on does NOT end in a exclamation mark.

  def exclamation?
    self.end_with?("!")
  end

#returns the number of sentences in a string
#returns zero if there are no sentences in a string
#returns the number of sentences in a complex string

  def count_sentences
    self.split(/[.!]/).count
  end
end
