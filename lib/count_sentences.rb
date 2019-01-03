require 'pry'

class String

  def sentence?
  sentence_array = self.split
    if sentence_array[-1][-1] == "."
      true
    else
      false
    end

  end

  def question?
    sentence_array = self.split
    if sentence_array[-1][-1] == "?"
      true
    else
      false
    end

  end

  def exclamation?
    sentence_array = self.split
    if sentence_array[-1][-1] == "!"
      true
    else
      false
    end
  end

def count_sentences
    sentence_array = self.split(/[.?!]/)
    sentence_array.reject! { |c| c.empty? }
    sentence_array.count
  end
end
