  
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
  true
else
  false
  end
end

def count_sentences
    sentence_count = self.split(/[.?!]/).reject {|string| string.empty?}
    return sentence_count.length
  end
end