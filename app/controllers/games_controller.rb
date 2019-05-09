class GamesController < ApplicationController
  def new
    alphabet = ('A'..'Z').to_a
    @letters = []
    10.times { @letters << alphabet.sample }

    params['letters'] = @letters
  end

  def score
    @answer = params['word']
  end
end
