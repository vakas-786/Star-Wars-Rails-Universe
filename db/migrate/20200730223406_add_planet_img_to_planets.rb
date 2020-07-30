class AddPlanetImgToPlanets < ActiveRecord::Migration[6.0]
  def change
    add_column :planets, :planet_img, :string
  end
end
