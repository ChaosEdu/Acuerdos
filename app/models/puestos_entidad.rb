   class PuestosEntidad < ActiveRecord::Base
resourcify
  has_many :empleados
  attr_accessible :nom_puesto, :empleado_id
end
