FactoryBot.define do
  factory :order do
    name { "Alan Mendicutti" }
    address { "MyText" }
    email { "alanmm@icalialabs.com" }
    pay_type { 0 }
  end
end
