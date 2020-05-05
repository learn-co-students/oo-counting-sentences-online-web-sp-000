require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?"!"
  end

  def count_sentences
  count = 0
  if self == ""
    count
  else
    array = self
  # if array.include?("...")
  #   count += 1
  #   # binding.pry
  #   array = array[0...-3]
  #   # binding.pry
  # end
  array.sub!("...", ".")
  array.sub!("!!", "!")
  b = array.split(/[!]|[?]|[.]/)
    b.each do |i|

    count += 1
    end
    # puts "Count is: " + count
  end
    count
  end
end
