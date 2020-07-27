class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :terrain
      t.float :population
      t.integer :diameter

      t.timestamps
    end
  end
end
