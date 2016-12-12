class CreateVegetables < ActiveRecord::Migration[5.0]
  def change
    create_table :vegetables do |t|
      t.string   :name

      t.timestamps(null: false)
    end
  end
end
