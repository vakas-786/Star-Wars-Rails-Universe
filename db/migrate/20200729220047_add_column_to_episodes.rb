class AddColumnToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :opening_crawl, :string 
  end
end
