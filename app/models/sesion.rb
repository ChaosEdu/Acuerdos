class Sesion < ActiveRecord::Base
	resourcify
  belongs_to :entidad_paraestatal
  
  has_many :lista_acuerdos, :dependent => :destroy
  has_many :comments, :as => :commentable
  accepts_nested_attributes_for :lista_acuerdos
  has_one :suplente #add
  
  accepts_nested_attributes_for :suplente, :allow_destroy => true	
  attr_accessible :extra_ordinaria, :fecha,:hora, :lugar, :status, :entidad_paraestatal_id, :lista_acuerdos_attributes, :suplente_attributes
  
  after_create :update_counters
  
  def status_string
    status ? 'Llevada a cabo' : 'No llevada a cabo'
  end
  
  def update_counters
    return unless entidad_paraestatal and entidad_paraestatal.sesions.size > 1 
    self.sesion_contador = entidad_paraestatal.sesions.size
    save
  end
end