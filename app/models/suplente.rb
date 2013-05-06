class Suplente < ActiveRecord::Base
	
  belongs_to :empleado
  belongs_to :sesion
  belongs_to :entidad_paraestatal
  belongs_to :gestion
  
  attr_accessible :empleado_id, :sesion_id, :entidad_paraestatal_id, :gestion_id, :empleado_attributes
  accepts_nested_attributes_for :empleado
end
