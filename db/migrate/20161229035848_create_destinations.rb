class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :slug
      t.string :website
      t.string :price_range

      t.integer :destination_type_id

      t.timestamp :destroyed_at
      t.timestamps
    end
  end
end
