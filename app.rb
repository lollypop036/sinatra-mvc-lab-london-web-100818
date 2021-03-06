require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base


    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
      string = params[:user_phrase]
      words = PigLatinizer.new
      @words = words.piglatinize(string)
        erb :piglatinize
    end

end