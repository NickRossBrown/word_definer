class Word
  @@word_list=[]

  attr_accessor :word
   def initialize (word)
     @word = word
   end
   def self.all
     @@word_list
   end
   def add_to_list
     @@word_list.push(@word)
   end

end
