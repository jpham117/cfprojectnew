class Comment < ActiveRecord::Base #Originally was ApplicationRecord
  belongs_to :user
  belongs_to :product
  
   scope :rating_desc, -> { order(rating: :desc) }
end
