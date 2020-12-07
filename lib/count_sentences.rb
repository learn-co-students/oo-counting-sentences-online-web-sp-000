require 'pry'

class String

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
    count_array = self.split(/\.|\?|\!/)
    count_array.count do |x|
      x.size >= 1
    # binding.pry
    end
    #SPLIT by any last punctuation into an array
    #COMPACT(!) removes nil values from an array
      # - didn't need to use because we're qualifying based on content existing
    #COUNT counts number of items in array
    #REGEX?
  end
end
