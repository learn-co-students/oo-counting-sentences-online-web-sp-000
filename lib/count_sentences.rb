require 'pry'

class String

#checks strings ending with various punctuation using single line if syntax to return true and false
  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end


#using rspec (/these charcters/) split the input string @ the defined charcters (. ? !)
#remember bar | & + are a part of the rspec test
  def count_sentences
    sentence_count = self.split(/\.+ |\?+ |!+ /)
    sentence_count.count
  end
end
