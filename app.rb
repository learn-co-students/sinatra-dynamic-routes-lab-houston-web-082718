require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversedname = params[:name].reverse
    "#{@reversedname}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end
  
  get '/say/:number/:phrase' do
    @repeated = params[:phrase] * params[:number].to_i
    "#{@repeated}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    case params[:operation]
    when "add"
      @result = num1 + num2
    when "subtract"
      @result = num1 - num2
    when "multiply"
      @result = num1 * num2
    when "divide"
      @result = num1 / num2
    end
    "#{@result}"
  end
end