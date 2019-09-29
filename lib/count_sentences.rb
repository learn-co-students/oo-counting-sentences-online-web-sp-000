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
    else
      false
    end
  end

  def count_sentences
  if self.include?("." || "!" || "?")
    new_count= self.split if self.include?("." || "!" || "?")
       new_count.delete_if {|string| string.length < 2}
       binding.pry
       new_count.count
  else return 0
  end
end
end