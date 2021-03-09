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
    #split sentence with mutiple criterias
    #split sentence with repeated criteria
    self.split(/[.|?|!]/).delete_if{|sentence| sentence == ""}.count

  end

end
