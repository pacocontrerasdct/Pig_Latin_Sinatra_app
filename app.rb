require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/begins_with_vowel'
require_relative './models/begins_with_consonant'

get '/:word' do
  "#{Capitalize.cap params[:word]}"
end
