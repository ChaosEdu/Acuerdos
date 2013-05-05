class ListaAcuerdo < ActiveRecord::Base
  resourcify
  belongs_to :sesion, inverse_of: :lista_acuerdo
  has_many :acuerdos
  has_many :comments, :as => :commentable
  accepts_nested_attributes_for :acuerdos, :allow_destroy => true, reject_if: :all_blank 
  attr_accessible :act, :avance, :sesion_id, :acuerdos_attributes, :allow_destroy => true	
  has_attached_file :act, 
  				:url => "/assets/lista_acuerdos/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/lista_acuerdos/:id/:style/:basename.:extension"

  validates_attachment_content_type :act, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
end
