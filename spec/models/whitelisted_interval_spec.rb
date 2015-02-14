require 'spec_helper'

RSpec.describe WhitelistedInterval, type: :model do

  describe 'responds to attributes' do
    it { should respond_to(:start_time)} 
    it { should respond_to(:end_time)} 
  end


  context :validations do
    it 'should not be valid without a start_time' do
      interval =  FactoryGirl.build(:whitelisted_interval,
                                    start_time: nil,
                                    end_time: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:start_time].count).to eq(1)
    end

    it "should not be valid without a end time" do
      interval =  FactoryGirl.build(:whitelisted_interval,
                                    end_time: nil,
                                    start_time: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:end_time].count).to eq(1)
    end

    it "should not be valid with end time earlier than start time" do
      interval =  FactoryGirl.build(:whitelisted_interval,
                                    end_time: Time.now + 24.hours,
                                    start_time: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:start_time].count).to eq(1)
    end
  end
end
