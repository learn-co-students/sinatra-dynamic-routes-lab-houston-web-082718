require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @revname = @name.reverse
    "#{@revname}"
  end

   get '/square/:number' do
    @num = params[:number].to_i
    @squarenum = @num ** 2
    "#{@squarenum.to_s}"
  end

   get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @repeat = @phrase * @number
    "#{@repeat}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @oper = params[:operation]
    if @oper == "add"
      @add = @num1 + @num2 
      "#{@add}" 
    elsif @oper == "subtract"
      @subtract = @num1 - @num2 
      "#{@subtract}" 
    elsif @oper == "multiply"
      @multiply = @num1 * @num2
      "#{@multiply}" 
    else @oper == "divide"
      @divide = @num1 / @num2
      "#{@divide}" 
    end
  end
end
