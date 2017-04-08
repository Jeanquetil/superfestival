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

# model describing the artists playing at concerts
class Artist < ApplicationRecord
	has_many :concerts
	has_many :festivals, through: :concerts
end
