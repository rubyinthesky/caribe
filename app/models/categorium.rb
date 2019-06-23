class Categorium < ApplicationRecord
	validates(:nombre, presence: true)
end
