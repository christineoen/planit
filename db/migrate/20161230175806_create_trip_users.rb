class CreateTripUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_users do |t|
      t.integer :trip_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
