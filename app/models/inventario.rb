class Inventario < ActiveRecord::Base
	belongs_to :operacion

	scope :operacion_first_trabjador, -> {Trabajar.first.operacions.map do |o| 
		o.inventario
	end
	}

	scope :piezas_inventario_nill, -> {where(operacion_id: nil)}

	after_destroy :borrar

	def borrar
		Registro.create(descripcion: "La pieza con serial #{serie} ha sido borrada")
	end
end
