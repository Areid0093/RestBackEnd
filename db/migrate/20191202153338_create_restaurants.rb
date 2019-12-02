class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.integer :rating


      t.timestamps
    end
  end
end
