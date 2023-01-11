class CreateVariations < ActiveRecord::Migration[7.1]
  def change
    create_table :variations do |t|
      t.text :article_variation
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
