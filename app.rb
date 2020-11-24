require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text_input = params[:user_phrase]

        new_text = PigLatinizer.new
        @pig_latin = new_text.piglatinize( text_input )

        erb :result
    end
end