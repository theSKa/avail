FactoryGirl.define do
  factory :event do |e|
    e.beginning Time.parse("2020.10.10 00:00 UTC")
    e.ending   Time.parse("2020.10.17 23:59 UTC")
  end
end
