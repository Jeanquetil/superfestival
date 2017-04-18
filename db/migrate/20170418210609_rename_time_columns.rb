class RenameTimeColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :concerts, :start_time, :start_at
    rename_column :concerts, :end_time, :end_at
    rename_column :festivals, :start_date, :start_at
    rename_column :festivals, :end_date, :end_at
  end
end
