require 'pry'

class String

  def sentence?
    #if self.end_with?(".") 
     # return true
    #else false 
    #end3
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #self.split(/\.|\?|\!/).size
    n = 0; count = 0 
    while n < self.length
      if self[n] == "." ||self[n] == "!" || self[n] == "?" 
        if self[n + 1] != "." && self[n +1] != "!" && self[n + 1] != "?"
          count +=1
        end  
      end
      n += 1
    end
    count
  end
end