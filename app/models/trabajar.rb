class Trabajar < ActiveRecord::Base

	validates :nombre, presence: true

	has_many :operacions, dependent: :destroy

	scope :operacion_first_trabjador_modo2, -> {first.operacions.map do |o| 
		o.inventario
	end
	}
end
