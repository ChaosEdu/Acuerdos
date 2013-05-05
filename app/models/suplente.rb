class Suplente < ActiveRecord::Base
	
  belongs_to :empleado
  belongs_to :sesion
  belongs_to :entidad_paraestatal
  belongs_to :gestion
  #has_many :sesions
  
 
  attr_accessible :empleado_id, :sesion_id, :entidad_paraestatal_id, :gestion_id, :allow_destroy => true  
  #accepts_nested_attributes_for :telefono
  #accepts_nested_attributes_for :email
end
