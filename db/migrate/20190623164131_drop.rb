class Drop < ActiveRecord::Migration[5.2]
  def up
    drop_table :usuarios
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
