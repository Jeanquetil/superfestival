class AddSessionIdToParticipations < ActiveRecord::Migration[5.1]
  def change
    add_column :participations, :session_id, :string
  end
end
