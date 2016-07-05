class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :rest_id, null: false
      t.string :content, null: false
      t.integer :rating, null: false

      t.index :user_id
      t.index :rest_id 
      t.timestamps null: false
    end
  end
end
