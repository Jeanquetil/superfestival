# == Schema Information
#
# Table name: festivals
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :time
#  end_date   :time
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Festival < ApplicationRecord
	has_many :concerts
	has_many :artists, through: :concerts
end
