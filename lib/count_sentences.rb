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
    skinny = self.squeeze
    my_array = skinny.split(/(\?|\.|!)/)
    my_array.reject! do |value|
      value == "." || value == "!" || value == "?"
    end
    my_array.length
#    binding.pry
  end
end
