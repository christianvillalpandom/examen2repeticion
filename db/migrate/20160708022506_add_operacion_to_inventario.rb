class AddOperacionToInventario < ActiveRecord::Migration
  def change
    add_reference :inventarios, :operacion, index: true, foreign_key: true
  end
end
