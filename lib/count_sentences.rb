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
    if self.end_with?(".","?","!")
      sentence_array = self.split(/[!?.]/)
      complete_sentences = sentence_array.reject{|string| string.empty?}.count
    else
      return 0
    end
    complete_sentences
  end
end
