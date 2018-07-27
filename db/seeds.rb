# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Defect.create([
	{ id: 1, defect_number: 'DEF001', defect_desc: 'defect test 1'},
	{ id: 2, defect_number: 'DEF002', defect_desc: 'defect test 2'},
	{ id: 3, defect_number: 'DEF003', defect_desc: 'defect test 3'},
	{ id: 4, defect_number: 'DEF004', defect_desc: 'defect test 4'},
	{ id: 5, defect_number: 'DEF005', defect_desc: 'defect test 5'}
])

#DefectDetail.create([
#	{ id: 1, defect_id: 1, comment: 'comment test 1'},
#	{ id: 2, defect_id: 2, comment: 'comment test 2'},
#	{ id: 3, defect_id: 3, comment: 'comment test 3'},
#	{ id: 4, defect_id: 3, comment: 'comment test 4'},
#	{ id: 5, defect_id: 3, comment: 'comment test 5'},
#	{ id: 6, defect_id: 2, comment: 'comment test 6'},
#	{ id: 7, defect_id: 4, comment: 'comment test 7'},
#	{ id: 8, defect_id: 4, comment: 'comment test 8'},
#	{ id: 9, defect_id: 5, comment: 'comment test 9'},
#	{ id: 10, defect_id: 5, comment: 'comment test 10'}
#])