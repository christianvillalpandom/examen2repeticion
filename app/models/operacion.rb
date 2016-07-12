class Operacion < ActiveRecord::Base
  belongs_to :trabajar
  has_one :inventario

  scope :operacion_ultimas5, -> {order("id desc").limit(5)}

  scope :operacion_utlimo_dia, -> {where(:created_at => last.created_at.beginning_of_day..last.created_at.end_of_day)}
end
