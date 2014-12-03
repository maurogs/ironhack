class KissController < ApplicationController
  def object
  end

  def ajax
  	sleep 2
  	comment = Comment.first.attributes
  	comment["movie"] = Movie.find(comment["movie_id"]).attributes.except("created_at", "updated_at")
  	comment.except!("created_at", "updated_at")
  	render json: comment
  end

  def echo
  end
end
