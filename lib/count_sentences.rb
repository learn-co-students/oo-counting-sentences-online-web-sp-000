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
    if !(self.include?(".") || self.include?("?") || self.include?("!"))
      return 0
    end
    punct = 0
    newSelf = self.split("")
    i = 0
    newSelf.each do | letter |
      if (letter == "." || letter == "?" || letter == "!")
        if !(newSelf[i + 1] == "." || newSelf[i + 1] == "?" || newSelf[i + 1] == "!")
          punct += 1
        end
      end
      i = i + 1
    end
    return punct
  end

end
