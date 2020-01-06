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
    # self.split(/\.|\?|\!/).filter do |possible_sentence|
    #   possible_sentence.length > 0
    # end.length

    # self.split(/\.|\?|\!/).delete_if do |sentence|
    #   sentence.length < 2
    # end.length

    self.split(/\.|\?|\!/).delete_if {|sentence| sentence.length < 2}.length

  end
end

# p "What's your name?".question?
p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
