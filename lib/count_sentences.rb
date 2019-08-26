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
    sentences = self.split(/\.|\?|\!/)
    sentences.delete_if {|s| s.size < 2}
    sentences.size
  end
end
