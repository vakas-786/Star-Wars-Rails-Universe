class CreatePpepisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :ppepisodes do |t|
      t.integer :episode_id
      t.integer :person_id
      t.integer :planet_id

      t.timestamps
    end
  end
end
