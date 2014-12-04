class Api::CommentsSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :body, :username

  has_one :user
  has_one :movie

  def username
  	object.user.username
  end
end
