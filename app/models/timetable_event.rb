# == Schema Information
#
# Table name: timetable_events
#
#  id           :integer          not null, primary key
#  timetable_id :integer
#  concert_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_timetable_events_on_concert_id    (concert_id)
#  index_timetable_events_on_timetable_id  (timetable_id)
#
# Foreign Keys
#
#  fk_rails_d261471645  (timetable_id => timetables.id)
#  fk_rails_ee6a65eb2d  (concert_id => concerts.id)
#

# model describing a single even in a timetable
# join timetable and concerts
class TimetableEvent < ApplicationRecord
  belongs_to :timetable
  belongs_to :concert
end
