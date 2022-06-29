require 'rails_helper'

#This is an RSpec test
describe Product do
    context "with valid information" do
        it "should be valid" do
            product = Product.new(title: "My Book Title",
                                    description: "yyy",
                                    price: 1,
                                    image_url: 'something.jpg')
            expect(product.valid?).to be_truthy
        end
    end
end