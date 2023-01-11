class AddColumnCtrToStats < ActiveRecord::Migration[7.1]
  def change
    add_column :stats, :ctr, :float
  end
end
