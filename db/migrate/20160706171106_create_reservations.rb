class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :reservation_option_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
