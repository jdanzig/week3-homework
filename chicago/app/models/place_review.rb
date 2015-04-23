class PlaceReview < ActiveRecord::Base
	belongs_to :place
	validates :rating, :presence => true, :inclusion => {:in => 0..5}
	validates :description, :presence => true
end