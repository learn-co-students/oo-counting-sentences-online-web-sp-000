require 'pry'

class String

  def sentence?
    if self.end_with? (".")
      true
    else
        false
    end
  end

  def question?
    if  self.end_with? ("?")
        true
  else
      false
  end
  end

  def exclamation?
    if self.end_with? ("!")
      true
    else
      false
    end
  end

  def count_sentences    
      new_self = self.split
      sentence = 0
 
      new_self.each do |word|
        sentence += 1 if word.sentence? || word.question? || word.exclamation?
      end   
      sentence
  end
end

    #  count_sentences = new_self.strip
    #  count_sentences.count