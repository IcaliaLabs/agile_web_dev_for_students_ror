FactoryBot.define do
    factory :product do
        sequence(:title) { |n| "MyString #{n}"}
        description {"MyText"}
        image_url {"lorem.jpg"}
        price {9.99}

        trait :in_line_item do
            line_items { [create(:line_item)] }
        end
    end
end