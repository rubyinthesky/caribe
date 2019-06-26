class AddRememberDigestToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :remember_digest, :string
  end
end
