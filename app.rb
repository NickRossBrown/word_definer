require 'sinatra'
require 'sinatra-reloader'
also_reload 'lib/**/*.rb'
require './lib/word_count'
require 'pry'
