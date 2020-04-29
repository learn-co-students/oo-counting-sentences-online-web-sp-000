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
    #self.split(/\?|\.|!/)
    array = self.split(/[?!.]/)
    array.reject{ |e| e.size < 2 }.length
    #self.split(/[?!.]\s+[A-Z]/).length.reject
    #binding.pry
  end
end
