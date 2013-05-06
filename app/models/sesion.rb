class Sesion < ActiveRecord::Base
	resourcify
  belongs_to :entidad_paraestatal
  
  has_many :lista_acuerdos, :dependent => :destroy
  has_many :comments, :as => :commentable
  accepts_nested_attributes_for :lista_acuerdos
  has_many :suplentes #add
  accepts_nested_attributes_for :suplentes
  
  attr_accessible :_destroy	and attr_accessor :_destroy
  attr_accessible :extra_ordinaria, :empleados, :fecha,:hora, :lugar, :status, :entidad_paraestatal_id, :suplente_id, :lista_acuerdos_attributes, :suplentes_attributes, :allow_destroy => true	
end
