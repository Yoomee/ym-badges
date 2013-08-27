module YmBadges::BadgeAwarding

  def self.included(base)
    base.belongs_to :badge
    base.belongs_to :user
    base.validates_presence_of :badge, :user
  end

end