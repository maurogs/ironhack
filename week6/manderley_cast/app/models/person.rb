class Person < ActiveRecord::Base
  has_many :casts
  has_many :movies, through: :casts

  validates_presence_of :first_name, :last_name

    has_many :vote_cast
    has_many :likes, ->() { likes },class_name: 'Vote'
    has_many :dislikes, ->() { dislikes },class_name: 'Vote'

  def complete_name
  	"#{self.first_name} #{self.last_name}"
  end
end
