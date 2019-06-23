class CreateCategoriaPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria_posts do |t|
      t.integer :id_categoria
      t.integer :id_post

      t.timestamps
    end
  end
end
