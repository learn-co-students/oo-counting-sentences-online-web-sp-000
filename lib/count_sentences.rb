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
  count_sentences_array = self.split(/[!.?]+/) 
  return count_sentences_array.count 
  
  end
  
   #   it "returns the number of sentences in a complex string" do
    #  complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    #  expect(complex_string.count_sentences).to eq(4)
   # end
  #end
end