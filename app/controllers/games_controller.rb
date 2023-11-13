class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join(' ')
  end

  def score
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    JSON.parse(response)

  end
end
