require 'pry'

class String
  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[.?!"!!"]/)
    array.delete("")
    return array.count
  end
end
