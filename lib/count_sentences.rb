require 'pry'

class String
  
attr_accessor :sentence
  
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
    sentence_array = self.split(/[.?!]/)
    sentence_array.delete_if{|sentence| sentence.empty?}
    sentence_array.length
    #using a regexp, anything in the slash marks with the array of sentence endings is the pattern they are looking for so that they can split them
  end
end

