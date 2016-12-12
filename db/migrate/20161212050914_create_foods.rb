class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string   :name, null: false
      t.text     :nutrition
      t.references :food_type, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
