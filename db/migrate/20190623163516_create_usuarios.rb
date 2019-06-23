class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :tipo

      t.timestamps
    end
  end
end
