class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :rooms, :id_type, :type_id
  end
end
