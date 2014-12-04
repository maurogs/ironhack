class KissController < ApplicationController
  def object
  end

  def ajax
  	sleep 2
  	render json: Movie.first
  end

  def echo
  end
end
