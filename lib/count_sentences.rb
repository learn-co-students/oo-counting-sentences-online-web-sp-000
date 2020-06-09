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
    @sentence_count = 0
    #binding.pry
    if self.empty?
      @sentence_count
    else
      @sentence_count = self.split(".").count + self.split("!").reject{ |c| c.empty?}.count - 1 + self.split("?").count - 1
    end
    
    @sentence_count

  end
end