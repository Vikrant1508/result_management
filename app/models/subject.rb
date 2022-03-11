class Subject < ApplicationRecord
	belongs_to :result
	validates :english, :Hindi, :Science, :maths, :social_science,
										   presence: true
end
