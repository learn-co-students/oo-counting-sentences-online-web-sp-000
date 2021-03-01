require 'pry'

class String

  def sentence?     # true if ends in . false if not
    self.end_with?(".")
  end

  def question?   # true if ends with ? false if not
    self.end_with?("?")
  end

  def exclamation?  # true if ends with ! false if not
    self.end_with?("!")
  end

  def count_sentences   # get back a count of sentences on a string
    # To use regex:
    #   searching for ( . ! ? )
    #   start of regex search uses / and at end /
    #     (/ . ! ? /)
    #   beginning of each criteria is \
    #     (/ \. \! \? /)
    #   To identify/seperate criteria, use |
    #     (/ \. | \! | \? /)
    #   Clean up spaces otherwise won't work
    #     (/\.|\!|\?/)

    new_array =  self.split(/\.|\!|\?/)
    counter_array = []
    
    new_array.each do |sentence|
      if sentence.length > 1
        counter_array << sentence
      end
    end

    counter_array.count

  end
end

# solution online:
  # self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
