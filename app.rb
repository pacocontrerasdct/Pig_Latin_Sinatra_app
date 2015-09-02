require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/begins_with_vowel'
require_relative './models/begins_with_consonant'

get '/' do
  @title = 'My Pig Latin Translator'
  erb :home
end

post '/' do
  # binding.pry // Stops Sinatra process
  # puts params // Puts hash keys and values which come with POST request
  
  word = params[:translator_input].downcase
  
  @translation = Capitalize.cap word
  
  # puts @translation // this, puts word in terminal

  erb :home # Calls home.erb page that gets new variables like @translation
end