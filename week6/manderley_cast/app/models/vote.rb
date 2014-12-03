class Vote < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  scope :likes, ->() { where amount: 1}
  scope :dislikes, ->() { where amount: -1}
  scope :user, ->(user) { where user: user}
  scope :movie, ->(movie) { where movie: movie}

  def liked
  	self.amount = 1
  end


  def liked!
  	liked
  	save
  end

  def disliked
  	self.amount = -1
  end

  def disliked!
  	disliked
  	save
  end

end
