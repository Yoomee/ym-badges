class AddAwardMessageToBadges < ActiveRecord::Migration

  def change
    add_column :badges, :award_message, :text
  end

end