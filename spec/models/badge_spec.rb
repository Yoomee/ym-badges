require 'spec_helper'

describe Badge do
  
  it {should have_many(:badge_awardings)}
  it {should have_many(:users)}
  it {should validate_presence_of(:slug)}
  it {should validate_presence_of(:name)}
  it {should validate_uniqueness_of(:slug)}
  
  describe do
    
    let(:badge) {FactoryGirl.create(:badge)}
    
    it "should be valid" do
      badge.should be_valid
    end
    
  end    
  
end