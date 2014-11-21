class Challenge < ActiveRecord::Base
	has_many :support

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[a-zA-Z0-9\s]*\z/}

	validates :content, presence: true


	def self.iron_find(id)
		where(id: id).first!
	end

	def self.last_created_challenges(number)
		order(created_at: :desc).limit(number)
	end

end
