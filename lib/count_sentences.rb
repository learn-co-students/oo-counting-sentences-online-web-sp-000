require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else false
    end
  end

  def count_sentences
    delimiters = ['.', '?', '!']
    sentences = self.split(Regexp.union(delimiters))
    sentences.delete_if {|element| element == " " || element == "" || element.nil? }
    sentences.count
  end
end
