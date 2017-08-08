class Order < ActiveRecord::Base #Originally was ApplicationRecord
    belongs_to :product
    belongs_to :user
end
