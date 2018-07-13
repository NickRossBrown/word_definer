require 'rspec'
require 'pry'
require 'word_count'

describe("word_count") do
  describe(".all") do
  it("returns all saved values initially empty") do
    Word.clear
    word = Word.new("dragon")
    expect(Word.all).to(eq([]))
    end
  end
  describe("#add_to_list") do
  it("add the inputted word to a list") do
    Word.clear
    word = Word.new("awesome")
    word.add_to_list
    word = Word.new("cool")
    word.add_to_list
    expect(Word.all).to(eq(["awesome","cool"]))
    end
  end
  describe(".clear") do
  it("clears the tiems in @@word_list") do
    word = Word.new("dragon")
    Word.clear
    expect(Word.all).to(eq([]))
    end
  end
  describe("#save") do
  it("add the inputted word to a list") do
    word1 = Word.new("awesome")
    word1.save
    word2 = Word.new("cool")
    word2.save
    expect(Word.all).to(eq([word1,word2]))
    end
  end
  describe(".find") do
    it("finds an word from the associated id") do
      Word.clear
      word = Word.new("ruby")
      word.save()
      word2 = Word.new("tuesday")
      word2.save()
      expect(Word.find(1)).to(eq(word))
      expect(Word.find(2)).to(eq(word2))
    end
  end
end
