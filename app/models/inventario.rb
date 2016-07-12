class Inventario < ActiveRecord::Base
	belongs_to :operacion

	scope :operacion_first_trabjador, -> {Trabajar.first.operacions.map do |o| 
		o.inventario
	end
	}

	scope :piezas_inventario_nill, -> {where(operacion_id: nil)}
end
