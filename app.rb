require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    num = params[:number].to_i
    "#{num*num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @new_string = ''
    params.each do |key,value|
      @new_string += value + ' '
    end
    @new_string = @new_string.chop + '.'
    erb :words
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    @answer = nil

    case operator 
    when 'add'
      @answer = num1 + num2
    when 'subtract'
      @answer = num2 - num1
    when 'multiply'
      @answer = num1 * num2
    when 'divide'
      @answer = num1 / num2
    end

    erb :operation

  end 

end