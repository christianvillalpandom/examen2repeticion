class CreateTrabajars < ActiveRecord::Migration
  def change
    create_table :trabajars do |t|
      t.string :nombre
      t.string :email

      t.timestamps null: false
    end
  end
end
