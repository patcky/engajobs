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
ProfileContact.destroy_all
ProfileBusinessHour.destroy_all
Address.destroy_all
AddressContact.destroy_all
AddressBusinessHour.destroy_all
Favourite.destroy_all
Review.destroy_all

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
puts '*'*80
p areas

languages = Language.create([
    { name: 'Português' },
    { name: 'Libras' },
    { name: 'Inglês' },
    { name: 'Espanhol' },
    { name: 'Francês' },
    { name: 'Alemão' },
    { name: 'Japonês' },
    { name: 'Chinês' },
    { name: 'Coreano' },
    { name: 'Aparaí' }, 
    { name: 'Bororo' }, 
    { name: 'Caingangue' }, 
    { name: 'Canela' }, 
    { name: 'Carajá' }, 
    { name: 'Caro' }, 
    { name: 'Galibi' }, 
    { name: 'Guarani' }, 
    { name: 'Macu' }, 
    { name: 'Nheengatu' }, 
    { name: 'Pirahã' }, 
    { name: 'Terena' }, 
    { name: 'Tucano' }, 
    { name: 'Tupi' }, 
    { name: "Ye'kuana" }
])
puts '*'*80
p areas

portuguese_id = Language.all.first[:id]

first_area_id = Area.all.first[:id]
specialities = Speciality.create([
    { name: 'Dermatologia', area_id: first_area_id },
    { name: 'Cardiologia', area_id: first_area_id },
    { name: 'Ginecologia', area_id: first_area_id },
    { name: 'Urologia', area_id: first_area_id },
    { name: 'Proctologia', area_id: first_area_id },
    { name: 'Psiquiatria', area_id: first_area_id },
])
puts '*'*80
p specialities

users = User.create([
    { 
        name: 'Test User 1', 
        email: 'test1@test.com',
        password: '123456',
        district: 'Liberdade', 
        city: 'São Paulo', 
        state: 'SP',
        country: 'BR'
    },
    { 
        name: 'Test User 2', 
        email: 'test2@test.com',
        password: '123456',
        district: 'Liberdade', 
        city: 'São Paulo', 
        state: 'SP',
        country: 'BR'
    },
    { 
        name: 'Test Admin', 
        email: 'admin@admin.com',
        password: '123456',
        district: 'Liberdade', 
        city: 'São Paulo', 
        state: 'SP',
        country: 'BR',
        admin: true
    }
])
puts '*'*80
p users

first_user_id = User.all.first[:id]
last_user_id = User.all.last[:id]

public_profiles = PublicProfile.create([
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
        is_lgbt: false,
        user_id: first_user_id
    },
    { 
        name: 'Test Profile 2',
        professional_registry: 'OAB123456',
        description: 'Lore ipsum...',
        gender: 'mulher cisgênero',
        ethnicity: 'branca',
        age: 30,
        has_online_service: false,
        has_home_service: true,
        is_pcd: true,
        is_lgbt: true,
        user_id: last_user_id
    }
])
puts '*'*80
p public_profiles

first_public_profile_id = PublicProfile.all.first[:id]
last_public_profile_id = PublicProfile.all.last[:id]

first_speciality_id = Speciality.all.first[:id]

provider_specialities = ProviderSpeciality.create(
    { 
        speciality_id: first_speciality_id, 
        public_profile_id: first_public_profile_id
    }
)
puts '*'*80
p provider_specialities

links = Link.create([
    {
        link_type: 1,
        url: "http://algumaurl.com",
        public_profile_id: first_public_profile_id
    },
    {
        link_type: 2,
        url: "http://algumaurl.com",
        public_profile_id: first_public_profile_id
    }
])
puts '*'*80
p links

profile_contacts = ProfileContact.create([
    {
        profile_contact_type: 1,
        profile_contact_value: "+5511999999999",
        public_profile_id: first_public_profile_id
    },
    {
        profile_contact_type: 2,
        profile_contact_value: "email@email.com",
        public_profile_id: first_public_profile_id
    }
])
puts '*'*80
p profile_contacts

profile_business_hours = ProfileBusinessHour.create([
    {
        day: 1,
        open_time: "10:00:00",
        close_time: "18:00:00",
        public_profile_id: first_public_profile_id
    },
    {
        day: 2,
        open_time: "10:00:00",
        close_time: "18:00:00",
        public_profile_id: first_public_profile_id
    },
    {
        day: 3,
        open_time: "10:00:00",
        close_time: "18:00:00",
        public_profile_id: first_public_profile_id
    },
    {
        day: 4,
        open_time: "10:00:00",
        close_time: "18:00:00",
        public_profile_id: first_public_profile_id
    },
    {
        day: 5,
        open_time: "10:00:00",
        close_time: "18:00:00",
        public_profile_id: first_public_profile_id
    }
    
])
puts '*'*80
p profile_business_hours

profile_languages = ProfileLanguage.create([
    {
        language_id: portuguese_id,
        public_profile_id: last_public_profile_id
    },
    {
        language_id: portuguese_id,
        public_profile_id: first_public_profile_id
    }
])
puts '*'*80
p profile_languages

addresses = Address.create([
    {
        street: 'Rua José Getúlio',
        number: '120',
        complement: '456',
        district: 'Liberdade',
        city: 'São Paulo',
        state: 'SP',
        country: 'Brasil',
        public_profile_id: first_public_profile_id
    },
    {
        street: 'Rua Tamandaré',
        number: '120',
        complement: '456',
        district: 'Liberdade',
        city: 'São Paulo',
        state: 'SP',
        country: 'Brasil',
        public_profile_id: first_public_profile_id
    },
])
puts '*'*80
p addresses

first_address_id = Address.all.first[:id]
address_contacts = AddressContact.create([
    {
        address_contact_type: 1,
        address_contact_value: "+5511000000000",
        address_id: first_address_id
    },
    {
        address_contact_type: 2,
        address_contact_value: "email2@email.com",
        address_id: first_address_id
    }
])
puts '*'*80
p address_contacts

address_business_hours = AddressBusinessHour.create([
    {
        day: 1,
        open_time: "11:00:00",
        close_time: "17:00:00",
        address_id: first_address_id
    },
    {
        day: 2,
        open_time: "11:00:00",
        close_time: "17:00:00",
        address_id: first_address_id
    },
    {
        day: 3,
        open_time: "11:00:00",
        close_time: "17:00:00",
        address_id: first_address_id
    },
    {
        day: 4,
        open_time: "11:00:00",
        close_time: "17:00:00",
        address_id: first_address_id
    },
    {
        day: 5,
        open_time: "11:00:00",
        close_time: "17:00:00",
        address_id: first_address_id
    }
])
puts '*'*80
p address_business_hours

reviews = Review.create(
    [{
        rating: 5,
        user_id: first_user_id,
        public_profile_id: last_public_profile_id
    },
    {
        rating: 5,
        user_id: last_user_id,
        public_profile_id: first_public_profile_id
    }]
)
puts '*'*80
p reviews

favourites = Favourite.create(
    {
        user_id: first_user_id,
        public_profile_id: last_public_profile_id
    }
)
puts '*'*80
p reviews