require 'pry'

class String

  def sentence?
    self.end_with?"."
  end

  def question?
if self.end_with? "?"
  true
else
  self.end_with? "." || "!"
  false
  end
end

  def exclamation?
    if self.end_with? "!"
      true
    else
      self.end_with? "." || "?"
      false
end
  end

  def count_sentences
    self.split(/[.!?]/).reject {|x| x.empty?}.size
  end

  def count_sentences_words
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size
  end

end
