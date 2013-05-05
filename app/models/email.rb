class Email < ActiveRecord::Base
  belongs_to :tipo_email
  belongs_to :empleado
  attr_accessible :correo, :empleado_id, :tipo_email_id
end
