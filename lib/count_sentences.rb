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
    sentences = self.split(" ")

      if sentences.any?{ |words| words.sentence? }
          return sentences.count{ |words| words.sentence? || words.question? || words.exclamation?}
      else
          return 0
      end    
  end
end