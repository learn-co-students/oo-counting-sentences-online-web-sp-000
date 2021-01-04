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
    complex_String = self.split("."|| "!"|| "?" || ",")
    binding.pry 
    if complex_String.include? "" || self.end_with?("  ")
      binding.pry 
     return complex_String.lengh
     binding.pry 
  end
end
end  