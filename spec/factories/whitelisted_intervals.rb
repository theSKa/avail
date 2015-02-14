FactoryGirl.define do
  factory :whitelisted_interval do |f|
      f.start_time Time.parse("2020.10.10 14:00")
      f.end_time   Time.parse("2020.10.10 14:30")
  end
end
