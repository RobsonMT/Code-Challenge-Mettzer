class CreateSavedArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_articles do |t|
      t.string :title
      t.string :url
      t.string :source
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
