require 'longest_word'

class LongestwordController < ApplicationController
  def game
    @start_time = Time.now
    @grid = generate_grid(20)

  end

  def score

    @results = run_game(params[:attempt], params[:grid].chars, params[:start_time].to_datetime, Time.now)
  end
end
