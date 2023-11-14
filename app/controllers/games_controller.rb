class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join(' ')
  end

  def score
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    note = JSON.parse(response)
    @note = note
  end
end
