class Trabajar < ActiveRecord::Base

	validates :nombre, presence: true

	has_many :operaciones
end
