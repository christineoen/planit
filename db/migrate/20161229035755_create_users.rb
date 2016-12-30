class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :slug

      t.datetime :birthday

      t.timestamp :destroyed_at
      t.timestamps
    end
  end
end
