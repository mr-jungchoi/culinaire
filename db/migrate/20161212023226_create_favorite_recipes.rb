class CreateFavoriteRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_recipes do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :recipe, null: false, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
