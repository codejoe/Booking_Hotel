class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :room_id
      t.integer :customer_id
      t.timestamps :start_date
      t.timestamps :end_date

      t.timestamps
    end
  end
end
