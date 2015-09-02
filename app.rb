require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/translating_to_pig'

get '/' do
  @title = 'My Pig Latin Translator'
  erb :home
end

post '/' do
  # binding.pry // Stops Sinatra process
  # puts params // Puts hash keys and values which come with POST request
  
  word = params[:translator_input].downcase
  
  @translation = 
  if word[0] == /[aeiou]/
    Pignerization.vowel word
  else
    Pignerization.consonant word
  end
  
  # puts @translation // this, puts word in terminal

  erb :home # Calls home.erb page that gets new variables like @translation
end