class Usuario < ApplicationRecord
	has_many :posts

    validates(:nombre,   presence: true, length: { maximum: 20 })
    validates(:username, presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false })
    validates(:password, presence: true, length: { minimum: 6 })
    validates(:email,    presence: true, length: { maximum: 255 }, 
    		             format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
    validates(:tipo,     presence: true)
end
