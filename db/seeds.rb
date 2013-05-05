# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	TipoEmail.create(nom_tipo_email: 'Personal') #para crear catalogos sin tirar
	TipoTel.create(nom_tipo_tel: 'Casa')
	TipoUsuario.create(nom_usuario: 'Administrador')
	TipoEntidad.create(nom_tipo_entidad: 'Fidecomiso')
	#TipoEmail.create(nom_tipo_email: 'Casa')
	#TipoEmail.create(nom_tipo_email: 'Casa')