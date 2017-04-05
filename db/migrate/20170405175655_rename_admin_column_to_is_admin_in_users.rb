class RenameAdminColumnToIsAdminInUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :admin, :is_admin
  end
end
