FactoryBot.define do
  factory :user do
    device { "iPhone 11" }
    imei { "AXB1234-XPTO-A321" }
    price { 200 }
    installment { 1 }
    user_id { }
  end
end