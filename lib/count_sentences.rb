require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    binding.pry
    sentences = self.scan(/(\. |\? |\! |\z)/).flatten
    sentences.count == 1 ? 0 : sentences.count
  end
end