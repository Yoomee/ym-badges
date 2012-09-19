require 'spec_helper'

describe User do
  
  it {should have_many(:badge_awardings)}
  it {should have_many(:badges)}
  
  describe 'award_badge!' do
    
    before do
      @user = FactoryGirl.create(:user)
      @badge = FactoryGirl.create(:badge, :slug => 'badge_1')
    end
    
    it "creates a badge awarding" do
      @user.award_badge!(:badge_1)
      @user.badges.should exist(:slug => 'badge_1')
    end
    
    it "returns nil if can't find badge with slug" do
      @user.award_badge!(:no_badge).should == nil
    end
    
    it "returns true if already awarded badge" do
      @user.award_badge!(:badge_1)
      @user.award_badge!(:badge_1).should == true
    end
    
  end    
  
end