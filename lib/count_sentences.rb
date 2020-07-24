class String

  def sentence?
    
    if self.end_with?('.')
      return true 
    else 
      return false 
    end
    
  end

  def question?
    
    if self.end_with?('?')
      return true 
    else 
      return false 
    end

  end

  def exclamation?
    
    if self.end_with?('!')
      return true 
    else 
      return false 
    end

  end

  def count_sentences
    
   splut = self.split(".")
   
   new = splut.collect do |s|
     s.split("?")
   end
  
  newer = new.flatten
  
  final = newer.collect do |st|
    st.split("!")
  end

  done = final.flatten
  done.delete("")
  done.count
   
  end
end

