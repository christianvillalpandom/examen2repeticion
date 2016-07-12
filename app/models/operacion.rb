class Operacion < ActiveRecord::Base
  belongs_to :trabajar
  has_one :inventario, dependent: :destroy

  scope :operacion_ultimas5, -> {order("id desc").limit(5)}

  scope :operacion_utlimo_dia, -> {where(:created_at => last.created_at.beginning_of_day..last.created_at.end_of_day)}

  after_destroy :operation_erase
  def operation_erase
  	trabajador = Trabajar.find(trabajar_id)
  	Registro.create(descripcion: "La operacion con referencia a la pieza #{iventario.serie} y al usuairo #{trabajar.id} - #{trabajar.nombre} ha sido borrada")
  end
end
