require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    rn = params[:name].reverse
    "#{rn}"
  end

  get "/square/:number" do
    erb :square
  end

  get "/say/:number/:phrase" do
    erb :phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    erb :concat
  end

  get "/:operation/:num1/:num2" do
    erb :math
  end
end
