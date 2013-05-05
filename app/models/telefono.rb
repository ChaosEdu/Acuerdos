class Telefono < ActiveRecord::Base
  belongs_to :tipo_tel
  belongs_to :empleado
  attr_accessible :empleado_id, :num_telefono, :tipo_tel_id
end
