require 'pry'

class String

  def sentence?
    if(self.match(/[.]$/) == nil)
      return false
    else
      return true
    end
  end

  def question?
    if(self.match(/[?]$/) == nil)
      return false
    else
      return true
    end
  end

  def exclamation?
    if(self.match(/[!]$/) == nil)
      return false
    else
      return true
    end
  end

  def count_sentences
    arr = self.split(/[.?!]+/)
    return (arr.length)
  end
end