class Review < ActiveRecord::Base
	validates_presence_of :rating, :user_id, :content
  belongs_to :product
  belongs_to :user
end
