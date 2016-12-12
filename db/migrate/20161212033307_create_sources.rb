class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string   :source_name
      t.string   :source_url
      t.string   :spoonacular_id, null: false
      t.references :recipe, null: false, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
