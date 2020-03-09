# frozen_string_literal: true

require 'pry'

class String
  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    count = 0
    split(/[.|!|?]/).each do |char|
      count += 1 if char != ''
    end
    count
  end
end
