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

#{"This, well, is a sentence. This is too!! And so is this, I think? Woo..."}
  def count_sentences
    sent_split = self.split(/[.?!]+/)
#  binding.pry
    sent_split.length
  end
end
