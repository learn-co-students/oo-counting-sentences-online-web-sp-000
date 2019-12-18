require 'pry'

class String

  def sentence?
   self.end_with?(".") = sentence 
   #@period = period 
  end

  def question?
    question= self.end_with?("?") #= question
    #@question = question 
  end

  def exclamation?
    exclamation= self.end_with?("!") #= exclamation
    #@exclamation = exclamation
  end

  def count_sentences 
    num = (sentence.length + question.length + exclamation.length)
    puts "#{num}"
  end
  
end 

#value = 0
    #self.split.count.each(".")= value  do | value+ 1|
    #self.split.count.each("!")= value  do | value+ 1|
   # self.split.count.each("?")= value  do | value+ 1|