class OrganoDeGobierno < ActiveRecord::Base
	resourcify
	belongs_to :tipo_organo_de_gobierno
  attr_accessible :nom_organo, :tipo_organo_de_gobierno_id
end
