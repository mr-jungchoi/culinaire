class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string   :name, null: false
      t.text     :ingredients, null: false
      t.text     :instructions, null: false
      t.integer  :minutes_to_prepare

      t.timestamps(null: false)
    end
  end
end
