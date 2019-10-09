require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
        input = params[:user_phrase]

       piggy_array = PigLatinizer.new
       piggy_array.piglatinize(input)
        # @pigified = input.pigify
        
    end

end