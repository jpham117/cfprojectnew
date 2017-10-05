require 'rails_helper'  # To get access to the configuration we need to write RSpec tests

describe Product do  # We add the describe block to tell RSpec which model we want to test. 
   context "when the product has comments" do
     let(:product) { Product.create!(name: "race bike") }
     let(:user) { User.create!(first_name: "Jen", last_name:"Pham", email: "jenpham@gmail.com", password: "test123")}
    
    before do
      Product.create!(name: "race bike")
      User.create!(email: "test1@gmail.com", password: "testtest") 
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end
  
    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end
    
    it "not valid without a name" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end
  end
end

