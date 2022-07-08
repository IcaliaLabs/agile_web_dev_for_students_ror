require 'system_helper'

RSpec.describe "Orders", type: :system do
    describe 'Dynamic fields' do
        it 'shows the right content' do
            visit store_index_url

            debugger;

            click_on 'Add to Cart', match: :first
            click_on 'Checkout'

            expect(page).to have_content("Please enter your details")
        end
    end
end