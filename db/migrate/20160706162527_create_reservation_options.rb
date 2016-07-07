class CreateReservationOptions < ActiveRecord::Migration
  def change
    create_table :reservation_options do |t|
      t.integer :rest_id, null: false
      t.datetime :reservation_time, null: false
      t.integer :table_size, null: false
      t.boolean :reserved, null: false, default: false
      t.timestamps null: false
    end
  end
end
