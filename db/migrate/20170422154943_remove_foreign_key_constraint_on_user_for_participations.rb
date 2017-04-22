class RemoveForeignKeyConstraintOnUserForParticipations < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :participations, name: "fk_rails_e80f5ca3a2"
  end
end
