class Word
  @@word_list=[]
  attr_reader :id
  attr_accessor :word, :definition, :color, :definition_color
   def initialize (word)
     @word = word
     @id = @@word_list.length + 1
     @definition = []
     @color = ("%06x" % (rand * 0xffffff))
     @definition_color = []
   end

   def self.all
     @@word_list
   end

   def add_to_list
     @@word_list.push(@word)
   end

   def save
      @@word_list.push(self)
  end

  def self.clear
    @@word_list = []
  end

  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

  def add_definition (define)
    @definition.push(define)
  end

  def add_color (color)
    @definition_color.push(color)
  end

end
