module YmBadges::BadgesHelper
  
  def render_new_badge_modal
    return '' if logged_out?
    if badge_awarding = current_user.badge_awardings.where(:notified => false).first
      badge_awarding.update_attribute(:notified, true)
      render('badges/modal', :badge => badge_awarding.badge)
    end
  end
  
end