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
    tube = self.split(/[\s,]/)
    count = 0
    tube.each do |x|
      count += 1 if x.question?||x.question?||x.exclamation?||x.sentence?
    end
    return count
  end
end
