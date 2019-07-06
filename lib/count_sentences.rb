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
    count = 0

    array = self.split(/[(\?)(\.)(\!)]{1}/)
    array.delete("")
    puts array
    array.size
  end
end
