require_relative 'config/environment'

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
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @phrase = @w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      @sum = @number1 + @number2
      "#{@sum}"
    elsif @operation == "subtract"
      @difference = @number1 - @number2
      "#{@difference}"
    elsif @operation == "multiply"
      @product = @number1 * @number2
      "#{@product}"
    elsif @operation == "divide"
      @quotient = @number1.to_f / @number2
      "#{@quotient}"
    end
  end

end