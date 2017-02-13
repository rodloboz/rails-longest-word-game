require 'longest_word'

class LongestwordController < ApplicationController
  def game
    params[:difficulty].nil? ? @grid_size = 20 : @grid_size = params[:difficulty].to_i
    @start_time = Time.now
    @grid = generate_grid(@grid_size)

  end

  def score
    @results = run_game(params[:attempt], params[:grid].chars, params[:start_time].to_datetime, Time.now)
    session[:score].nil? ? session[:score] = 0 : session[:score] += @results[:score]
  end
end
