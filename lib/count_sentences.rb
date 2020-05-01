require 'pry'

class String

  def sentence?
    self.end_with?('.') ? true : false
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?('!') ? true : false
  end

  def count_sentences
    delimiters = ['.','?','!']
    array = self.split(Regexp.union(delimiters))
    array.reject{|string| string.empty?}.count
  end
end