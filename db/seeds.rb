# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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