class AddCustomFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :gender, :string, default: 'Male'
    add_column :users, :address, :string, default: 'Accra, Ghana'
    add_column :users, :phone, :string, default: '0240000000'
  end
end
