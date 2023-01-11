class CreateStats < ActiveRecord::Migration[7.1]
  def change
    create_table :stats do |t|
      t.integer :sign_up_count
      t.integer :page_view_count
      t.integer :click_count
      t.references :variation, foreign_key: true
      t.timestamps
    end
  end
end
