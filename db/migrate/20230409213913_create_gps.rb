class CreateGps < ActiveRecord::Migration[7.0]
  def change
    create_table :gps, id: :uuid do |t|
      t.string :container_no, null: false
      t.float :weight
      t.string :vehicle_reg
      t.string :hauller
      t.boolean :is_approved, null: false, default: false
      t.string :customer
      t.datetime :date_in, default: Time.now
      t.datetime :date_out
      t.string :line
      t.string :size
      t.string :depot
      t.string :sheet

      t.timestamps
    end
  end
end
