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
    sentences = self.split(/[.][\s]|[?][\s]|[!][\s]/)
    sentences.length
    # if sentences == nil
    #   0
    # else
    #   sentences.length
    # end
  end
end
