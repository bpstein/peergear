FactoryGirl.define do
  factory :room do 
    home_type "apartment"
    room_type "private"
    accommodate "3"
    bed_room "3"
    bath_room "2"
    listing_name "Nice Penthouse"
    summary "Come stay at my place"
    address "123 Example Street"
    price "400"
  end
end