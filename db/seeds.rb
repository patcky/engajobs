# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Area.destroy_all
Speciality.destroy_all

areas = Area.create([
    { name: 'Saúde' },
    { name: 'Beleza' },
    { name: 'Moda' },
    { name: 'Reformas' },
    { name: 'Assistência técnica' },
    { name: 'Ensino' },
    { name: 'Automóveis' },
    { name: 'Consultoria' },
    { name: 'Tecnologia' },
    { name: 'Eventos' },
    { name: 'Serviços domésticos' },
    { name: 'Arte' },
])
p areas

first_area_id = Area.all.first[:id]
specialities = Speciality.create([
    { name: 'Dermatologia', area_id: first_area_id },
    { name: 'Cardiologia', area_id: first_area_id },
    { name: 'Ginecologia', area_id: first_area_id },
    { name: 'Urologia', area_id: first_area_id },
    { name: 'Proctologia', area_id: first_area_id },
    { name: 'Psiquiatria', area_id: first_area_id },
])
p specialities