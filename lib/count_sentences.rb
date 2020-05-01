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
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length
  end
end

# def count_sentences
# sentence_count = []
# if exclamation? == true || question? == true || sentence? == true
# self.squeeze.split(/[.?!]/).each do |sentence|
# sentence_count<<sentence
# end
# sentence_count.length
#       end
#     end
# end
