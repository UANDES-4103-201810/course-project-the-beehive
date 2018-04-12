# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(mail: 'gpvicuna@miuandes.cl',password: 'password123', privileges: 'admin')
user_2 = User.create(mail: 'ByronFerrari@gmail.cl',password: 'password123', privileges: 'registered')
user_3 = User.create(mail: '1@nomail.cl',password: '0', privileges: 'guest')


profile_1 = Profile.create( user: user_1 , name: "Gustavo Vicunia", image: "image 1", description: "Primer y unico admin", last_sesion: 20181204)
profile_2 = Profile.create( user: user_2 , name: "Byron Ferrari", image: "image 2", description: "El mas pulento", last_sesion: 20181205)


project_1 = Project.create(name: "Un audifono para un flaite", profile: profile_2, description: "asdasd", goal: 100, actual_amount: 5 , date_limit: DateTime.new(2019, 05, 15) ,cfunders: 5)

promise_1 = Promise.create(project: project_1, description: "asd", min_sum: 20, estimated_arrival: DateTime.new(2019, 05, 12), cfunders: 0)

images_1 = Image.create(image:"project image 1", project: project_1)

video_1 = Video.create(video: "project video 1", project: project_1)

favorites_1 = Favorite.create( user: user_1, project: project_1)

web_1 = Web.create(webpage:"website", profile: profile_1)

phone_1 = Phone.create( phone:"987654321", profile: profile_1)

mail_1 = Mail.create( mail:"a@s.com", profile: profile_1)
