
  require 'sinatra'

  get '/bet/:stake/on/:number' do
    stake = params[:stake].to_i
    number = params[:number].to_i
    roll = rand(6) +1
    if roll == number
      "It landed #{roll} you win #{stake * 6} stakes"
    else
      "It landed on #{roll} you lose your stakes"
    end

  end
