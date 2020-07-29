class AddColumnToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :url_people, :string 
  end
end
