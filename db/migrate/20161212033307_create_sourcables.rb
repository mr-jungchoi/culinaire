class CreateSourcables < ActiveRecord::Migration[5.0]
  def change
    create_table :sourcables do |t|
      t.references :recipe, null: false
      t.string :sourcable_type, null: false
      t.integer :sourcable_id, null: false

      t.timestamps(null: false)
    end
  end
end
