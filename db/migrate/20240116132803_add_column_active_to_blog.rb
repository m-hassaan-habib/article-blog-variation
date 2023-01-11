class AddColumnActiveToBlog < ActiveRecord::Migration[7.1]
  def change
    add_column :blogs, :status, :integer, default: 1
  end
end
