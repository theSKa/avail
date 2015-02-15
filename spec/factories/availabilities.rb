FactoryGirl.define do
  factory :availability do |f|
      f.beginning Time.parse("2020.10.10 14:00")
      f.ending   Time.parse("2020.10.10 14:30")
  end
end
