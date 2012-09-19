module YmBadges::Badge
  
  def self.included(base)
    base.has_many(:badge_awardings, :class_name => 'YmBadges::BadgeAwarding', :dependent => :destroy)
    base.has_many(:users, :through => :badge_awardings)
    base.validates(:slug, :presence => true, :uniqueness => true)
    base.validates(:name, :presence => true)
  end
  
end