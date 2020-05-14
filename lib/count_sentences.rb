require 'pry'

class String

  def sentence?
    unless self.end_with?(".") || self.end_with?(". ")
      false
    else
      true
    end
  end

  def question?
    unless self.end_with?("?") || self.end_with?("? ")
      false
    else
      true
    end
  end

  def exclamation?
    unless self.end_with?("!") || self.end_with?("! ")
      false
    else
      true
    end
  end

  def count_sentences

    self.split(/[.?!]+\s/).count
  end

end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".split(/[.?!]+\s/)
