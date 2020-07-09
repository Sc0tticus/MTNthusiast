Trip.destroy_all

Guide.destroy_all
Client.destroy_all

guide1 = Guide.create(
  name: "Scott Singer",
  hobby: "Skiing",
  expertise: "Backcountry Skiing",
  rating: 5,
  instagram: "SkiingScott303",
  email: "skiingscott@gmail.com",
  phone: 1112223333,
  rate: 50,
  about: "25 years"
)

guide2 = Guide.create(
  name: "Ahmed Gaber",
  hobby: "Skiing",
  expertise: "Backcountry Skiing",
  rating: 3,
  instagram: "SkiingAhmed",
  email: "skiingscott@gmail.com",
  phone: 1112223355,
  rate: 40,
  about: "2 years"
)

guide3 = Guide.create(
  name: "Damon Chivers",
  hobby: "Skiing",
  expertise: "Backcountry Skiing",
  rating: 4,
  instagram: "SkierDamon",
  email: "skierDamon@gmail.com",
  phone: 1112223343,
  rate: 20,
  about: "5 years"
)

client1 = Client.create(
  name: "Luke Skywalker",
  hobby: "Skiing",
  rating: 1,
  instagram: "YoungSkywalker",
  email: "skyguy@gmail.com",
  phone: 11121213222,
  about: "Son of Darth Vader, brother to Leia, I actually really love skiing and want to get into backcountry."
)

trip1 = Trip.create(
  guide: guide1,
  client: client1,
  date: nil,
  description: "Scott Singer: going to be taking Luke Skywalker to ski the Perfect Tree on Berthoud Pass. Meeting him in the Dino Lots at 5:00 AM on 7/5/2020."
)

