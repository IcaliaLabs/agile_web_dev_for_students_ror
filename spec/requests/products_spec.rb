require 'rails_helper'

RSpec.describe "/products", type: :request do
    describe "trying to delete product in cart" do
        it "can't delete product in cart" do

            product = create(:product, :in_line_item)
            #line_item = create(:line_item)
            #product.line_items = [line_item]
            
            expect do
                delete product_url(product)
            end.to_not change{ Product.count }

            assert_redirected_to products_url
        end
    end

    describe "#destroy" do
        it "should redirect to products list" do
            product = create(:product)
            expect do
                delete product_url(product)
            end.to change{ Product.count }

            assert_redirected_to products_url
        end
    end
end