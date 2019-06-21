require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/[.?!]+/).grep(/\S/).count
    #sentences = []
    #binding.pry
    #single_punctuation = self.split("")
    #single_punctuation.each do |char|
    #  if char == "." || char == "?" || char == "!"
    #    sentences << char
    #  end
    #end
    #multiple_punctuation = self.split(" ")
    #multiple_punctuation.each do |char|
    #  if char == ".." || char == "??" || char == "!!" || char == "..." || char == "???" || char == "!!!" || char == "." || char == "!" || char == "?"
    #    sentences << char
    #  end
    #end
    #sentences.length
  end
end
