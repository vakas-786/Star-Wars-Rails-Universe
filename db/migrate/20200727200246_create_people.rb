class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :dob
      t.string :gender
      t.string :skin_color

      t.timestamps
    end
  end
end
