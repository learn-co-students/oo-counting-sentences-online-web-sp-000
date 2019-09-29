require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
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
  if self.include?("." || "!" || "?")
    self.split(/\!|\.|\?/).delete_if {|w| w.length < 2}.count
  else return 0
  end
end
end