class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :mich_review, null: false
      t.string :head_chef, null: false
      t.integer :stars, null: false
      t.string :cuisine, null: false
      t.string :website, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.float :lat, null: false
      t.float :lon, null: false
      t.timestamps null: false
    end
  end
end
