FactoryBot.define do
    factory :line_item do
        association :product
        association :cart
        order {create(:order)}
    end
end