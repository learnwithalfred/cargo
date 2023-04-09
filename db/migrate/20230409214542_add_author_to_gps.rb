class AddAuthorToGps < ActiveRecord::Migration[7.0]
  def change
    add_column :gps, :creator_id, :uuid, null: false
  end
end
