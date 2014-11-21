class Entry < ActiveRecord::Base
	mount_uploader :poster, PosterUploader

  belongs_to :project


	validates :hours, format: {with: /\A\d+\z/ }, presence: true
	validates :minutes, format: {with: /\A\d+\z/ }, presence: true
	validates :date, presence: true 

	def self.current_month_entries
       month = Date.today.month
       year = Date.today.year
       beginning_of_month = Date.new(year,month, 1)
       end_of_month = beginning_of_month.end_of_month
       
       where("date > ? AND date < ?", beginning_of_month, end_of_month)
   end 


end
