class CreateBadges < ActiveRecord::Migration
  
  def change
    create_table :badges do |t|
      t.string :slug
      t.string :name
      t.text :description
      t.string :image_uid
      t.timestamps
    end
  end
  
end