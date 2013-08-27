module YmBadges::UserExt

  def self.included(base)
    base.has_many(:badge_awardings, :dependent => :destroy)
    base.has_many(:badges, :through => :badge_awardings, :class_name => "Badge")
  end

  def award_badge!(slug)
    return true if !Settings.allow_multiple_awardings_of_badge && badges.exists?(:slug => slug.to_s)
    if badge = ::Badge.find_by_slug(slug.to_s)
      self.badges << badge
    end
  end

end