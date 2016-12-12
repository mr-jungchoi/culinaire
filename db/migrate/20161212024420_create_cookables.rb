class CreateCookables < ActiveRecord::Migration[5.0]
  def change
    create_table :cookables do |t|
      t.references :pantry, null: false, index: true, foreign_key: true
      t.string     :cookable_type, null: false
      t.integer    :cookable_id, null: false

      t.timestamps(null: false)
    end
  end
end
