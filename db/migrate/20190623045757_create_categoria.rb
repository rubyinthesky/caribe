class CreateCategoria < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.integer :id_post
      t.integer :id_usuarios

      t.timestamps
    end
  end
end
