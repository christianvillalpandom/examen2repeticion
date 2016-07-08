require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
  
	def setup
		@trabajador = trabajars(:one)
		@ope = Operacion.create(trabajar_id: @trabajador.id)
	end
  test "Obtener usuario de operacion" do
    assert @ope.trabajar_id == @trabajador.id
  end
end
