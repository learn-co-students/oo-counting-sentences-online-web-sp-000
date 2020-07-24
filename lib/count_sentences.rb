require 'pry'

class String
  #attr_accessor :string

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
    #  binding.pry
  #  self.split(". " || "..." || "? " || "! " ).count
    self.split(/[!{2}?.]\s/).count
  #  [?.!]\s[A-Z]

  end

end

#it "returns the number of sentences in a complex string" do
#  complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#  expect(complex_string.count_sentences).to eq(4)
