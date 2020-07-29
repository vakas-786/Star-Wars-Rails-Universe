class AddColumnToPlanet < ActiveRecord::Migration[6.0]
  def change
    add_column :planets, :url_planet, :string 
  end
end
