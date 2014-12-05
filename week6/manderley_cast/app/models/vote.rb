class Vote < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  enum rating: {disliked: -1, liked: 1, not_voted: 0}

  scope :likes, ->() { liked }
  scope :dislikes, ->() { disliked }
  scope :user, ->(user) { where user: user}
  scope :movie, ->(movie) { where movie: movie}


  def liked
  	self.rating  = :liked
  end


  def disliked
    self.rating = :disliked
  end


  # Estos ya no se usan por el enum

  # def liked!
  # 	liked
  # 	save
  # end


  # def disliked!
  # 	disliked
  # 	save
  # end

  #Estos 2 metodos son para tests

  # def liked?
  #   amount == 1
  # end

  # def disliked?
  #   amount == -1
  # end

end
