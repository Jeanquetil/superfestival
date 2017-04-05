class RemovePhotoFromFestivals < ActiveRecord::Migration[5.1]
  def change
    remove_column :festivals, :photo
  end
end
