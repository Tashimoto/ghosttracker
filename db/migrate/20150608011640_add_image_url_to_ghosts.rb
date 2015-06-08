class AddImageUrlToGhosts < ActiveRecord::Migration
  def change
    add_column :ghosts, :image_url, :string
  end
end
