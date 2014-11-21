class Project < ActiveRecord::Base
	mount_uploader :poster, PosterUploader



	has_many :entries, dependent: :destroy

	#1. validate uniqueness of name
	validates :name, uniqueness: true
	#2. validate presence of name
	validates :name, presence: true
	#3. validate length of name to be a maximum of 30 characters
	validates :name, length: {maximum: 30}
	#4. validate the name to only include alphanumeric characters
	validates :name, format: {with: /\A[a-zA-Z0-9\s]*\z/}
	#Todo en una linea
	#validates :name, uniqueness: true, presence: true,
	#				format: {\A[a-zA-Z0-9\s]*\z}

	PER_PAGE = 5

	def self.iron_find(id)
		where(id: id).first!
	end

	def self.name_update(names)
		batch_delete = 0
		where(name: names).each do |project|
			project.destroy
			counter += 1
		end
		puts "#{batch_delete} projects removed"
	end

	def self.last_created_projects(number)
		order(created_at: :desc).limit(number)
	end

	def upcase_name!
		update_attribute(:name, name.upcase)
	end


	def total_hours_in_month(month, year)
		total_hours = 0
		total_minutes = 0

		#beginning_of_month = Date.new(year, month,1)
		beginning_of_month = Date.parse("#{year}-#{month}-1")
		end_of_month = beginning_of_month.end_of_month

		entries.where("date >= ? AND date <= ?", beginning_of_month, end_of_month).each do |entry|
			total_hours += entry.hours
			total_minutes += entry.minutes 
		end

		total_hours + (total_minutes/60)
	end






end
