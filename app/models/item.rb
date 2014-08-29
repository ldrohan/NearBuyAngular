class Item < ActiveRecord::Base
	validates :name, :description, :image, :email, :lat, :long, presence: true
end
