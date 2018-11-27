require 'pry'

class String


  def sentence?
    self.end_with?(".")
  end

  def question?
     if self.end_with?("?")
       return true
     else
       return false
     end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map.count
  end
end

#[^\.!?]:Caret inside of a character class [^ ] is the negation operator. Which means we are
#looking for characters which are not present in list: ., ! and ?.

# + :is a greedy operator that returns matches between 1 and unlimited times.
#(capturing our sentences here and ignoring repetitions like ...)

#matching characters ., ! or ?.

# [\.!?] : In a nutshell, we are capturing all characters that are
#not ., ! or ? till we get characters that are ., ! or ?. Which basically can be treated as a sentence (in broad senses).
