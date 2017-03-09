class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.time :start_time
      t.time :end_time
      t.references :artist, foreign_key: true
      t.references :festival, foreign_key: true

      t.timestamps
    end
  end
end
