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
    proper_sentences = self.split(/[\.!?] /)
    proper_sentences.length
end

end
