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
  splitted = self.split(/(?<=[(?!.]\s{1})/)
  splitted.count{|sentence| sentence? || question? || exclamation?}
end

end