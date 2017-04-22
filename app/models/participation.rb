# == Schema Information
#
# Table name: participations
#
#  id           :integer          not null, primary key
#  timetable_id :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  session_id   :string
#
# Indexes
#
#  index_participations_on_timetable_id  (timetable_id)
#  index_participations_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_761caf036c  (timetable_id => timetables.id)
#

class Participation < ApplicationRecord
  belongs_to :timetable
  belongs_to :user, optional: true
end
