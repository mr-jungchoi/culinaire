class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :recipe, null: false, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
