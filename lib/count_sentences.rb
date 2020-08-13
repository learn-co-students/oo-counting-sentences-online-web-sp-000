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

  # split strings on .?!, count elements as result of split
  def count_sentences
    self.squeeze('.!?').count('.!?')
  end
end