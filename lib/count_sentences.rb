require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    count = 0
    self.split.each do |x|
      count += 1 if x[-1].match?(/[!\.?]/)
    end
    count
  end
end