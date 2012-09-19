class YmBadges::BadgeAwarding < ActiveRecord::Base
  
  belongs_to :badge
  belongs_to :user
  
  validates_presence_of :badge, :user
  
end