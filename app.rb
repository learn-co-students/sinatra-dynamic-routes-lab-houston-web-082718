require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:num" do
    @num = params[:num]
    "#{@num.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @repeated = ""
    @num.times do
      @repeated += @phrase
    end
    @repeated
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word1.to_s
    @word2 = params[:word2]
    @word2.to_s
    @word3 = params[:word3]
    @word3.to_s
    @word4 = params[:word4]
    @word4.to_s
    @word5 = params[:word5]
    @word5.to_s
    @period = "."
    @space = " "
    @result = ""
    @result=@result+@word1
    @result=@result+@space
    @result=@result+@word2
    @result=@result+@space
    @result=@result+@word3
    @result=@result+@space
    @result=@result+@word4
    @result=@result+@space
    @result=@result+@word5
    @result=@result+@period
    @result+""
    @result
  end

  get "/:operation/:number1/:number2" do
    @operator = params[:operation]
    @num1, @num2 = params[:number1].to_i, params[:number2].to_i
    if(@operator == "add")
      "#{@num1+@num2}"
    elsif(@operator == "subtract")
      "#{@num1-@num2}"
    elsif(@operator == "multiply")
      "#{@num1*@num2}"
    elsif(@operator == "divide")
      "#{@num1/@num2}"
    end
  end

end
