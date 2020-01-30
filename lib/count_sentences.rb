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
    # segments = self.split(/!?. {1,}/)
    segments = self.split(/[!?.] {1,}/)
    if(segments.length == 1)
      return 0 
    else 
      return segments.length 
    end 
  end
end