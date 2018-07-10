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
  @definition = defin
  words.save
  @word_list = Word.all()
  # binding.pry
  erb(:input)
end

get ('/words/:id') do
  @word = Word.find(params[:id])
  @definition = Word.definition(params[definition])
  erb(:output)
end

post('/word/:id') do
  binding.pry
  defin = params["definition"]
  @definition = Word.definition(defin)
  erb(:output)
end
