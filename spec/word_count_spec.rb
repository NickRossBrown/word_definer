require 'rspec'
require 'pry'
require 'word_count'

describe("word_count") do
  describe(".all") do
  it("is initially empty") do
    expect(Word.all).to(eq([]))
    end
  end
  describe("#add_to_list") do
  it("add the inputted word to a list") do
    word = Word.new("awesome")
    word.add_to_list
    word = Word.new("cool")
    word.add_to_list
    expect(Word.all).to(eq(["awesome","cool"]))
    end
  end

end
