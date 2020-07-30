class AddPersonImageToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :person_image_url, :string
  end
end
