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
  	sentences_arr = self.split(/[.!?]/).select {|sentence| sentence != ""}
  	# binding.pry
  	sentences_arr.size
  end
end