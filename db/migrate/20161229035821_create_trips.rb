class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :slug
      t.integer :number_of_travelers

      t.timestamp :destroyed_at
      t.timestamps
    end
  end
end
