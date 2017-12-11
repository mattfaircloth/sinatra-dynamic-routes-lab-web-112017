require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @repeated = params[:phrase] * params[:number].to_i
    "#{@repeated}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @concat = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@concat}"
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      answer = num1 + num2
    elsif op == "subtract"
      answer = num1 - num2
    elsif op == "multiply"
      answer = num1 * num2
    else
      answer = num1 / num2

    end
    answer.to_s
  end
end
