YmUsers::User.class_eval do

  class << self
    
    def included_with_ym_badges(base)
      included_without_ym_badges(base)
      base.send(:include, YmBadges::UserExt)
    end
    alias_method_chain :included, :ym_badges
    
  end
  
end
