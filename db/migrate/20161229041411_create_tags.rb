class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :slug

      t.timestamp :destroyed_at
      t.timestamps
    end
  end
end
