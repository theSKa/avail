require 'spec_helper'

RSpec.describe Event, type: :model do
  describe 'responds to attributes' do
    it { should respond_to(:name)} 
    it { should respond_to(:description)} 
    it { should respond_to(:ending)} 
    it { should respond_to(:beginning)} 
  end

  context :validations do
    it 'should not validate without name' do
      event =  FactoryGirl.build(:event,
                                  name: nil,
                                  description: 'foo',
                                  beginning: Time.now + 24.hours,
                                  ending: Time.now + 48.hours)
      expect(event).to_not be_valid
      expect(event.errors[:name].count).to eq(1)
    end
    it 'should not validate without description' do
      event =  FactoryGirl.build(:event,
                                  name: 'foo',
                                  description: nil,
                                  beginning: Time.now + 24.hours,
                                  ending: Time.now + 48.hours)
      expect(event).to_not be_valid
      expect(event.errors[:description].count).to eq(1)
    end
    it 'should not validate without begining' do
      event =  FactoryGirl.build(:event,
                                  name: 'foo',
                                  description: 'foo',
                                  beginning: nil,
                                  ending: Time.now + 48.hours)
      expect(event).to_not be_valid
      expect(event.errors[:beginning].count).to eq(1)
    end

    it "should not validate without ending" do
      event =  FactoryGirl.build(:event,
                                  name: 'foo',
                                  description: 'foo',
                                  beginning: Time.now + 48.hours,
                                  ending: nil)
      expect(event).to_not be_valid
      expect(event.errors[:ending].count).to eq(1)
    end

    it "should not validate with ending before begining" do
      event =  FactoryGirl.build(:event,
                                  name: 'foo',
                                  description: 'foo',
                                  ending: Time.now + 24.hours,
                                  beginning: Time.now + 48.hours)
      expect(event).to_not be_valid
      expect(event.errors[:beginning].count).to eq(1)
    end
  end
end
