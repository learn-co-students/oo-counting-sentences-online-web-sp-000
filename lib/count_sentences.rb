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
    newArray = []
    (self.split(" ")).collect do |i|
      if i.end_with?("!") or i.end_with?("?") or i.end_with?(".")
        newArray.push(i)
      end
    end
    newArray.length
  end
  
end
