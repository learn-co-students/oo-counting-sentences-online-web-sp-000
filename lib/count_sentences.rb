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
    sentences = self.split("."|| "!"|| "?")
    sentences.count 
    
    #If an argument is given, counts the number of elements which equal obj using ==.
    
    
    
    if sentences.include? ""
      puts sentences.length 
    end  
  end
end