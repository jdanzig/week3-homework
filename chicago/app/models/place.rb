class Place < ActiveRecord::Base
	has_many :reviews, :class_name => 'PlaceReview'
	validates :title, :presence => true, :length => {:maximum => 255}
	validates :photo_url, :presence => true
	validates :price, :presence => true, :numericality => {:only_integer => true, :greater_than => -1}
	validates :description, :presence => true
end