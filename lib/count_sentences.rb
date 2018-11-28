require 'pry'

class String

  def sentence?
  if self.end_with?(".")
    return true
  else
    return false
end
  end

  def question?
if self.end_with?("?")
  return true
else
  return false
end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
  split_sentence_array = self.split(/[\.!?]/).delete_if {|word| word.size < 2}
split_sentence_array.size
  end
end
