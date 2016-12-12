class CreateSpoonaculars < ActiveRecord::Migration[5.0]
  def change
    create_table :spoonaculars do |t|
      t.string   :source_id, null: false

      t.timestamps(null: false)
    end
  end
end
