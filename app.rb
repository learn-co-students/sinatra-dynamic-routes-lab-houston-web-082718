require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @revers = params[:name]
    "#{@revers.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i
    "#{@square ** 2}"
  end

  get '/say/:number/:phrase' do
    @n, @phrase = params[:number].to_i, params[:phrase]
    "#{@phrase * @n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1, @num2 = params[:number1].to_i, params[:number2].to_i
    "#{@num1 * @num2} #{@num1 / @num2} #{@num1 + @num2} #{@num1 - @num2}"
  end
end