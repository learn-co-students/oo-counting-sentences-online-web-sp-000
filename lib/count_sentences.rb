require 'pry'

class String

  def sentence?
   if self.end_with?(".")
      true
   else
    false
   end
  end

  def question?
    if self.end_with?("?")
      true
   else
    false
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
    new_array = self.split(/[.*!*?*]/)
    no_empty = new_array.reject {|i| i.empty?}
    no_empty.count

    #binding.pry
  end

end