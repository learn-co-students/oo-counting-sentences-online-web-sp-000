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
    self.split(" ").select do |possiblity| 
      possiblity.end_with?(".", "!", "?")
    end.length
  end
end