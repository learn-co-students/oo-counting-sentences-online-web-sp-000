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
    string_array = self.split(/\.|!|\?/)
    updated_array = string_array.reject { |c| c.empty?}
    puts updated_array 
    return updated_array.length
end
end