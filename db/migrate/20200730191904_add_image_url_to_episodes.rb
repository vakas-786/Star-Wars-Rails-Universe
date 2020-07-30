class AddImageUrlToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :image_url, :string
  end
end
