class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :id_type
      t.string :status

      t.timestamps
    end
  end
end
