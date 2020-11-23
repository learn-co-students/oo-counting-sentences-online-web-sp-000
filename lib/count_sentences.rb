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
    nu_array = []
    self.split(/[.!?]/).each do |sentence|
      nu_array << sentence
    end
    nu_array.delete_if {|element| element == ""}
    nu_array.count
  end

end
