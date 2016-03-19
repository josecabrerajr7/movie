class Product < ActiveRecord::Base
	validates :title, :price, :year, :storyline, :genres, :release_date, :runtime, :image_url, presence: false
	
	validates :title, uniqueness: true, :presence => { message: "Pretty Please!" }
	validates :price, numericality: { greater_than_or_equal_to: 0.01, message: "Please! How you supposed to make money?" }
	validates :year, :presence => { message: "Please, I really want to know!" }
	validates :storyline, length: { minimum: 100, message: "Come on, we want to know it. At least put effort in and make sure it’s more than 100 words!" }
	validates :genres, :presence => { message: " because it sucks that you don’t know it!" }
	validates :image_url, allow_blank: false, format: {
		with: %r{\.(gif|jpg|png)\z}i,
		message: "! How dare you not show an image of the movie!"
	}
end
