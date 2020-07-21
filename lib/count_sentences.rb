require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    counter = 0 
    re = /[.!?]\s/
    string_array = self.split(re)
    return string_array.length
  end
  
end