class AddColumnNameToBlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :blogs, :name, :string
  end
end
