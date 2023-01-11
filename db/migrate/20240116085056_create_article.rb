class CreateArticle < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.text :article
      t.references :blog, foreign_key: true
      t.timestamps
    end
  end
end
