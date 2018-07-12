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
  defin = params["definition"]
  words.add_definition(defin)
  words.save
  @word_list = Word.all()
  erb(:input)
end

get ('/words/:id') do
  @wordpage = Word.find(params[:id])
  erb(:output)
end

post('/word/:id') do
  @wordpage = Word.find(params[:id].to_i)
  defin = params["definition"]
  @wordpage.add_definition(defin)

  erb(:output)
end
