

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    count = self.split(/([^\.\?\!]+[\.\?\!]*)/)
    .delete_if {|sentence| sentence == ""}.length
    count

    #alternative solution
    self.split(/[?!.] /).count
  end
end