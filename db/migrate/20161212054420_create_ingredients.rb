class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string   :amount
      t.references :cookable, ploymorphic: true, null: false, index: true
      t.references :food, null: false, index: true, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
