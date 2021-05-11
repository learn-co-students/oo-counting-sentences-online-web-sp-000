require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
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
    num_sent = 0
    breakdown =  self.split(' ')
    breakdown.each do |chunk|
      if chunk.end_with?(".") || chunk.end_with?("?") || chunk.end_with?("!")
        num_sent += 1
      end
      num_sent
    end
    num_sent
  end
end

"one. two. three?".count_sentences
