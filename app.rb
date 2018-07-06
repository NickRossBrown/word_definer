require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/word_count'
require 'pry'

get ('/') do
  @word_list = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  words = Word.new(word)
  words.save()
  @word_list = Word.all()
  erb(:input)
end
