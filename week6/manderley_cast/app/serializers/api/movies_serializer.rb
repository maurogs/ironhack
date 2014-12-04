class Api::MoviesSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :synopsis, :duration

    has_many :comments, serializer: SimpleCommentSerializer

end
