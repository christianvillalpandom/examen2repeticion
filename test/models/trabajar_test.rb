require 'test_helper'

class TrabajarTest < ActiveSupport::TestCase

	def setup
		@trabajador = trabajars(:one)	
	end
  
  test "validar presencia nombre" do
  	@trabajador.nombre = ''
    assert_not @trabajador.save
  end

end
