class AddStageToConcerts < ActiveRecord::Migration[5.1]
  def change
    add_column :concerts, :stage, :string
  end
end
