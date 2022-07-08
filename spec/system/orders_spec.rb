require 'system_helper'

RSpec.describe "Orders", type: :system do
    describe 'Dynamic fields' do
        it 'shows the right content' do
            product = create(:product)            
            visit root_path
            
            click_on 'Add to Cart', match: :first
            click_on 'Checkout'

            expect(page).to have_content("Please enter your details")
            expect(page).to_not have_field("Credit card number")
            expect(page).to_not have_field("Expiration date")
            expect(page).to_not have_field("Po number")

            select 'Credit card', from: 'Pay type'

            expect(page).to have_field("Credit card number")
            expect(page).to have_field("Expiration date")

            select 'Purchase order', from: 'Pay type'
            expect(page).to_not have_field("Credit card number")
            expect(page).to_not have_field("Expiration date")
            
            expect(page).to have_field("Po number")
        end
    end
end