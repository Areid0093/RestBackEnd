class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :restaurant_id
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
