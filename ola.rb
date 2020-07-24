require 'pry'

  def count_sentences(x)
    y = x.split(/! |\? |\. /)
    binding.pry
    puts y.length
  end


count_sentences("Hello. How are you? Good? That's great!! Hi. ")
