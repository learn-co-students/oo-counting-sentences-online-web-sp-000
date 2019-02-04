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

  def count_sentences(split)
    array = split(/.[.?!]/)
    array.collect {|string| !string.empty?}
    return array.length
  end
  
end