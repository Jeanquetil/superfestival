# == Schema Information
#
# Table name: festivals
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  start_at   :datetime
#  end_at     :datetime
#

class Festival < ApplicationRecord
	has_many :concerts, dependent: :destroy
	has_many :artists, through: :concerts
end
