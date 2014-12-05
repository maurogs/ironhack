class VoteCast < ActiveRecord::Base
  belongs_to :person
  belongs_to :user

  enum rating: {disliked: -1, liked: 1, not_voted: 0}

  scope :likes, ->() { where rating: 1}
  scope :dislikes, ->() { where rating: -1}
  scope :user, ->(user) { where user: user}
  scope :person, ->(person) { where person: person}
  
  def liked
  	self.rating = :liked
  end

  # def liked!
  # 	liked
  # 	save
  # end

  def disliked
  	self.rating = :disliked
  end

  # def disliked!
  # 	disliked
  # 	save
  # end
end
