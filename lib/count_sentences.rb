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
    complex_String = self.split("."|| "!"|| "?")
    puts complex_String.count 
     if (complex_String.include? "")
      return complex_String.length 
  end 
end 
end  