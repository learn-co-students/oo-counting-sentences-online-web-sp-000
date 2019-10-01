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

count_array = self.split(/[.!?]/)

new_array = count_array.reject {|what| what.empty?}


if new_array.length == 0
  return 0
else 
  return new_array.length
end 

  end
end