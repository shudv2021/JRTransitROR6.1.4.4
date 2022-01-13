
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {second_name: 'Ivanov', first_name: 'Ivan', email: 'ivan@yandex.ru', password: '123456'},
    {second_name: 'Petrov', first_name: 'Petr', email: 'petr@yandex.ru', password: '123456'},
])

transits = Transit.create([
    {second_name: 'Client1', first_name: 'Client1', patronymic: 'Client1', tel: "9881111", email: "9881111@yandex",
    weight: 10, length: 100, width: 15, height: 15, point_of_departure: 'Нижний Новгород', 
    destination: 'Москва', distance: nil, price: nil, user_id: users[0].id},
    {second_name: 'Client2', first_name: 'Client2', patronymic: 'Client2', tel: "9882222", email: "9882222@yandex",
    weight: 10, length: 100, width: 15, height: 15, point_of_departure: 'Нижний Новгород',
    destination: 'Москва', distance: nil, price: nil, user_id: users[0].id},
    {second_name: 'Client3', first_name: 'Client3', patronymic: 'Client3', tel: "988333", email: "9883333@yandex",
    weight: 10, length: 100, width: 15, height: 15, point_of_departure: 'Нижний Новгород',
    destination: 'Москва', distance: nil, price: nil, user_id: users[0].id}

])