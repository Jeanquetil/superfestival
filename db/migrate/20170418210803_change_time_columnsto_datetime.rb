class ChangeTimeColumnstoDatetime < ActiveRecord::Migration[5.1]
  def change
    remove_column :festivals, :start_at
    add_column :festivals, :start_at, :datetime, after: :name

    remove_column :festivals, :end_at
    add_column :festivals, :end_at, :datetime, after: :start_at

    remove_column :concerts, :start_at
    add_column :concerts, :start_at, :datetime, after: :festival_id

    remove_column :concerts, :end_at
    add_column :concerts, :end_at, :datetime, after: :start_at

  end
end
