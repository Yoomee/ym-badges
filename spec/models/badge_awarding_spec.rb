require 'spec_helper'

describe YmBadges::BadgeAwarding do
  
  it {should belong_to(:badge)}
  it {should belong_to(:user)}
  it {should validate_presence_of(:badge)}
  it {should validate_presence_of(:user)}
  
  describe do
    
    let(:badge_awarding) {FactoryGirl.create(:badge_awarding)}
    
    it "should be valid" do
      badge_awarding.should be_valid
    end
    
  end    
  
end