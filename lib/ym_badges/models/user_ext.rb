module YmBadges::UserExt
  
  def self.included(base)
    base.has_many(:badge_awardings, :class_name => "YmBadges::BadgeAwarding", :dependent => :destroy)
    base.has_many(:badges, :through => :badge_awardings)
  end

  def award_badge!(slug)
    return true if badges.exists?(:slug => slug)
    if badge = Badge.find_by_slug(slug.to_s)
      self.badges << badge
    end
  end

end