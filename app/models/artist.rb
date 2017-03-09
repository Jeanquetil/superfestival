# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  main_genre :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ApplicationRecord
end
