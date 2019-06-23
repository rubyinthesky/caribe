class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.timestamp :fecha
      t.string :url_imagen
      t.integer :id_usuario_creador
      t.text :contenido

      t.timestamps
    end
  end
end
