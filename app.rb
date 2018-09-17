require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # rev_name = params[:name].reverse
    # '#{rev_name}'
    erb :reversename
  end

  get '/square/:number' do
    erb :square
  end

  get '/say/:number/:phrase' do
    erb :phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :word
  end

  get '/:operation/:num1/:num2' do
    erb :operation
  end

end