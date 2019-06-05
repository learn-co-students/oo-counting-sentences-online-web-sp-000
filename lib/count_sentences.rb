require 'pry'

class String

  def sentence?
    # "hello".include? "lo"   #=> true
    self.include? "."
  end

  def question?
    self.include? "?"
  end

  def exclamation?
    self.include? "!"
  end

  def count_sentences
    arr = self.split(/[.!?]/).reject{|s| s.empty?}
    arr.size
  end
end
