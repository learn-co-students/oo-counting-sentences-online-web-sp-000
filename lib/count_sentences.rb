

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
array = self.split(/[.!?]/).reject { |c| c.empty? }
return array.count 
end
end