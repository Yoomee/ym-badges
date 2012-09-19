class CreateBadgeAwardings < ActiveRecord::Migration
  
  def change
    create_table :badge_awardings do |t|
      t.belongs_to :badge
      t.belongs_to :user
      t.boolean :notified, :default => false
      t.timestamps
    end
    add_index :badge_awardings, :badge_id
    add_index :badge_awardings, :user_id
  end
  
end