class Empleado < ActiveRecord::Base
  resourcify
  belongs_to :entidad_paraestatal
  belongs_to :tipo_usuario
  belongs_to :puestos_entidad
  has_many :telefonos
  has_many :emails
  accepts_nested_attributes_for :telefonos, :allow_destroy => true 
  accepts_nested_attributes_for :emails, :allow_destroy => true 
  
  attr_accessible :activo, :ap_materno,  :ap_paterno, :dir_trabajo, :entidad_paraestatal_id, :jefe_inmediato, :nombre, :puestos_entidad_id, :tipo_usuario_id, :telefonos_attributes, :emails_attributes
end
