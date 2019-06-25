class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
  	    add_index :usuarios, :email, unique: true
  end
end
