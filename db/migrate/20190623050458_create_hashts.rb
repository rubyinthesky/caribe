class CreateHashts < ActiveRecord::Migration[5.2]
  def change
    create_table :hashts do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
