require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number * @number).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # binding.pry
    string = ""
    @number.times do
      string += @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @one = params[:number1].to_i
    @two = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      (@one + @two).to_s
    elsif @operation == "subtract"
      (@one - @two).to_s
    elsif @operation == "multiply"
      (@one * @two).to_s
    else
      (@one / @two).to_s
    end

  end

end
