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
    sentences = self.strip.split(/\?|\!|\./)
    return sentences.delete_if {|x| x.length < 2 }.length
  end
end
