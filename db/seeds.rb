# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Area.destroy_all
Speciality.destroy_all
User.destroy_all
PublicProfile.destroy_all
ProviderSpeciality.destroy_all
Link.destroy_all

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
p '-'*40
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
p '-'*40
p specialities

users = User.create([
    { 
        name: 'Test User 1', 
        email: 'test1@test.com',
        password: '123456',
        district: 'Liberdade', 
        city: 'São Paulo', 
        state: 'SP'
    },
    { 
        name: 'Test User 2', 
        email: 'test2@test.com',
        password: '123456',
        district: 'Liberdade', 
        city: 'São Paulo', 
        state: 'SP'
    }
])
p '-'*40
p users

first_user_id = User.all.first[:id]
public_profiles = PublicProfile.create(
    { 
        name: 'Test Profile 1',
        professional_registry: 'OAB123456',
        description: 'Lore ipsum...',
        gender: 'homem cisgênero',
        ethnicity: 'branco',
        age: 30,
        has_online_service: true,
        has_home_service: false,
        is_pcd: false,
        is_validated: true,
        user_id: first_user_id
    }
)
p '-'*40
p public_profiles

first_public_profile_id = PublicProfile.all.first[:id]
first_speciality_id = Speciality.all.first[:id]
provider_specialities = ProviderSpeciality.create(
    { 
        speciality_id: first_speciality_id, 
        public_profile_id: first_public_profile_id
    }
)
p '-'*40
p provider_specialities

links = Link.create([
    {
        type: 1,
        url: "http://algumaurl.com",
        public_profile_id: first_public_profile_id
    },
    {
        type: 2,
        url: "http://algumaurl.com",
        public_profile_id: first_public_profile_id
    }
])
p '-'*80
p links