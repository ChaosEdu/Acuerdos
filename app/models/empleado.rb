class Empleado < ActiveRecord::Base
  resourcify
  belongs_to :entidad_paraestatal
  belongs_to :tipo_usuario
  belongs_to :puestos_entidad
  has_many :suplentes , :through => :entidad_paraestatal
  has_many :telefonos
  has_many :emails
  accepts_nested_attributes_for :telefonos
  accepts_nested_attributes_for :emails
  attr_accessible :activo, :ap_materno,  :ap_paterno, :dir_trabajo, :entidad_paraestatal_id, :jefe_inmediato, :nombre, :puestos_entidad_id, :tipo_usuario_id, :puestos_entidad_id, :suplentes_attributes, :telefonos_attributes, :emails_attributes, :allow_destroy => true 
end
