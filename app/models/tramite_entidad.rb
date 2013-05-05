class TramiteEntidad < ActiveRecord::Base
  belongs_to :tramites
  belongs_to :entidad_paraestatal
  # attr_accessible :title, :body
end
