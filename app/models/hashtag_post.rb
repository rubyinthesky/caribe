class HashtagPost < ApplicationRecord
	validates(:id_hashtag, presence: true)
	validates(:id_post, presence: true)
end
