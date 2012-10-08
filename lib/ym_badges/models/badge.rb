module YmBadges::Badge

  def self.included(base)
    base.has_many(:badge_awardings, :class_name => 'YmBadges::BadgeAwarding', :dependent => :destroy)
    base.has_many(:users, :through => :badge_awardings)
    base.validates(:slug, :presence => true, :uniqueness => true)
    base.validates(:name, :presence => true)
    base.image_accessor :image
    base.send(:validates_property, :format, :of => :image, :in => [:jpeg, :jpg, :png, :gif], :message => "must be an image")
  end


  def award_message
    read_attribute(:award_message).presence || description
  end

end