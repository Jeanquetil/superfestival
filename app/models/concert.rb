# == Schema Information
#
# Table name: concerts
#
#  id          :integer          not null, primary key
#  artist_id   :integer
#  festival_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stage       :string
#  start_at    :datetime
#  end_at      :datetime
#
# Indexes
#
#  index_concerts_on_artist_id    (artist_id)
#  index_concerts_on_festival_id  (festival_id)
#
# Foreign Keys
#
#  fk_rails_9b7ca26671  (festival_id => festivals.id)
#  fk_rails_d40a0fb5cb  (artist_id => artists.id)
#

class Concert < ApplicationRecord
  belongs_to :artist
  belongs_to :festival
end
