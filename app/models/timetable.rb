# == Schema Information
#
# Table name: timetables
#
#  id          :integer          not null, primary key
#  festival_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_timetables_on_festival_id  (festival_id)
#
# Foreign Keys
#
#  fk_rails_e33000e2b1  (festival_id => festivals.id)
#

# model describing the timetable of some users for a fiven festival
class Timetable < ApplicationRecord
  belongs_to :festival
  has_many :participations
  has_many :users, through: :participations
end
