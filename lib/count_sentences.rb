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
    self.split(/[.?!]/).reject {|sentence| sentence.empty?}.size
    
    #using a regexp, anything in the slash marks with the array of sentence endings is the pattern they are looking for so that they can split them
  end
end

