FactoryGirl.define do
  factory :profile do
    association :user, factory: :user
    firstname "first"
    lastname "last"
    prescription_num "12342141234"
    phonenum "123-123-1234"
    address1 "123 Something dr"
    city  "Somewhere"
    zipcode "92322"
    prescription_card_file_name { 'presc.jpg' }
    prescription_card_content_type { 'image/jpeg'}
    prescription_card_file_size { 1024 }
    idcard_file_name { 'test.png' }
    idcard_content_type { 'image/png' }
    idcard_file_size { 1024 }
  end
end
