require 'spec_helper'

RSpec.describe Availability, type: :model do

  describe 'responds to attributes' do
    it { should respond_to(:beginning)} 
    it { should respond_to(:ending)} 
  end


  context :validations do
    it 'should not be valid without a begining' do
      interval =  FactoryGirl.build(:availability,
                                    beginning: nil,
                                    ending: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:beginning].count).to eq(1)
    end

    it "should not be valid without a end time" do
      interval =  FactoryGirl.build(:availability,
                                    ending: nil,
                                    beginning: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:ending].count).to eq(1)
    end

    it "should not be valid with end time earlier than start time" do
      interval =  FactoryGirl.build(:availability,
                                    ending: Time.now + 24.hours,
                                    beginning: Time.now + 48.hours)
      expect(interval).to_not be_valid
      expect(interval.errors[:beginning].count).to eq(1)
    end
  end
end
