class EntidadParaestatal < ActiveRecord::Base
  resourcify
  rolify
  belongs_to :tipo_entidad
  belongs_to :organo_de_gobierno
  belongs_to :secretaria
  has_many :sesions, inverse_of: :entidad_paraestatal
  has_many :empleados
  has_many :suplentes
  has_many :comments, :as => :commentable
  accepts_nested_attributes_for :empleados, :allow_destroy => true
  accepts_nested_attributes_for :sesions, :allow_destroy => true
  attr_accessible :marco_normativo, :objeto_social, :nom_entidad, :organo_de_gobierno_id, :secretaria_id, :entidad_paraestatal_id, :tipo_entidad_id, :empleados_attributes, :sesions_attributes, :allow_destroy => true	

  def self.search(search)
    if search
    where 'nom_entidad LIKE ?', "%#{search}%"
    else
      find(:all)
    end
  end

end
