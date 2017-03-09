class CreateFestivals < ActiveRecord::Migration[5.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.time :start_date
      t.time :end_date
      t.string :location
      t.string :photo

      t.timestamps
    end
  end
end
