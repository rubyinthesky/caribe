class Post < ApplicationRecord
	belongs_to :usuarios

	validates(:titulo,             presence: true, length: { maximum: 20 })
    validates(:fecha,              presence: true)
    validates(:url_imagen,         presence: true)
    validates(:id_usuario_creador, presence:true)
    validates(:contenido,          presence:true)
end
