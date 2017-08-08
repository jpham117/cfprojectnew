class Product < ApplicationRecord
  def self.search(search_term)
    Product.where("name ILIKE ?", "%#{search_term}%")
  end
end
