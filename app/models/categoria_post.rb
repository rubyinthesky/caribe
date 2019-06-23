class CategoriaPost < ApplicationRecord
	validates(:id_categoria, presence: true)
	validates(:id_post, presence: true)
end
