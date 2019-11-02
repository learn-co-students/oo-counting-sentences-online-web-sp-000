require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") == true
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!") == true
      return true
    else
      return false
    end

  end

  def count_sentences
    nArray = self.split(/[.?!]/).reject {|string| string.empty?}
    nSize = 0
    nSize = nArray.length
    return nSize


  end
end
