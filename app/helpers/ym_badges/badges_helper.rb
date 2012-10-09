module YmBadges::BadgesHelper

  def render_new_badge_modal
    return '' if logged_out?
    # if (badge_awardings = current_user.badge_awardings.where(:notified => false)).present?
    if (badge_awardings = current_user.badge_awardings).present?
      badge_awardings.update_all("notified = true")
      badges = badge_awardings.collect(&:badge).uniq
      render('badges/modal', :badges => badges)

    end
  end

end