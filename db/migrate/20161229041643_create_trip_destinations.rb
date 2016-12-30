class CreateTripDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_destinations do |t|
      t.integer :trip_id
      t.integer :destination_id
      t.integer :order, null: false, default: 1

      t.timestamps
    end
  end
end
