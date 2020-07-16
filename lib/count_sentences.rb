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
    sentences = self.split(/[.!?]/)
    sentences.select do |sentence|
      sentence.length > 0
    end.length
    # sentences_no_blanks = []
    # sentences.each do |sentence|
    #   if sentence.length != 0
    #     sentences_no_blanks << sentence
    #   end
    # end
    # sentences_no_blanks.length   
  end
end