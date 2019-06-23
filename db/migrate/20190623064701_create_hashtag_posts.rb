class CreateHashtagPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtag_posts do |t|
      t.integer :id_hashtag
      t.integer :id_post

      t.timestamps
    end
  end
end
