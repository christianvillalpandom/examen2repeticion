class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
