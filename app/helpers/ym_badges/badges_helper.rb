module YmBadges::BadgesHelper

  def render_new_badge_modal
    return '' if logged_out?
    if (badge_awardings = current_user.badge_awardings.where(:notified => false)).present?
      badges = badge_awardings.collect(&:badge).uniq
      badge_awardings.update_all("notified = true")
      (render 'badges/modal', :badges => badges).html_safe
    end
  end

end