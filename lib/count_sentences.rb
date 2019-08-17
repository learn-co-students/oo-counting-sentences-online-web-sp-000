require 'pry'

class String

  def sentence?
    
    if self.end_with?(".")
      true 
    else 
      false 
   end 
  end

  def question?
    if self.end_with?("?")
      true 
    else 
      false 
    end 

  end

  def exclamation?
    
    if self.end_with?("!")
      return true 
    else 
      false 
    end 

  end

  def count_sentences
    
    
    
    array = self.split(/[^\w\s\,]/)
    
    ## now you just have to remove the empty string 
    
    array.delete_if{ |n| n.empty? } 
    
    sentences = array.count 
    
    p sentences 
   
    
  end
end