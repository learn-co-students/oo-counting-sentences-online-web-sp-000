require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end
    
  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    self_array = [ ]
    total_count = [ ]
    self_array = self.split((/[.!'?]/))
    self_array.delete_if{|x| x == ""}
    total_count << self_array.count
    total_count.inject {|sum, n| sum + n}
  end
end