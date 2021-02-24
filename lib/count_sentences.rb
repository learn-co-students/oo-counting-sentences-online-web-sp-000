require 'pry'

class String

  def sentence?
    self[-1,1] == "."
  end

  def question?
    self[-1,1] == "?"

  end

  def exclamation?
    self[-1,1] == "!"

  end

  def count_sentences
    chars = self.split(/[.!?]+/)

    #binding.pry

    chars.count


    # punc = [".", "!", "?"]
    # sentences = 0
    #
    # chars.each_with_index do |char, i|
    #   sentences += 1 if punc.include?(char) && !punc.include?(chars[i-1])
    #   binding.pry
    # end
    # sentences
  end
end

"Hi! This is a test... Good?".count_sentences
