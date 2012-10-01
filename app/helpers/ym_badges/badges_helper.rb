module YmBadges::BadgesHelper
  
  def render_new_badge_modal
    return '' if logged_out?
    if (badge_awardings = current_user.badge_awardings.where(:notified => false)).present?
      "".tap do |out|
        badge_awardings.each do |badge_awarding|
          badge_awarding.update_attribute(:notified, true)
          out << render('badges/modal', :badge => badge_awarding.badge)
        end
      end.html_safe
    end
  end
  
end