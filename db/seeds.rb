require "open-uri"

p "Destroying courses"
Course.destroy_all
p "Destroying chefs"
Chef.destroy_all
p "Destroying users"
User.destroy_all

users_h = [
  {
    first_name: "Maxime",
    last_name: "Plasse",
    email: "maxime@gmail.com",
    password: "maxime",
    nickname: "maxplasse",
    photo: "https://ca.slack-edge.com/T02NE0241-U02SEH58EG5-145417290445-512"
  },
  {
    first_name: "Marie",
    last_name: "Sepanik",
    email: "marie@gmail.com",
    password: "maries",
    nickname: "mariess",
    photo: "https://ca.slack-edge.com/T02NE0241-U02T8TN7BH6-7ddecfe937a5-512"
  },
  {
    first_name: "Thomas",
    last_name: "Desmoulins",
    email: "thomas@gmail.com",
    password: "thomas",
    nickname: "tdm",
    photo: "https://ca.slack-edge.com/T02NE0241-U0HL5H10T-1e791b124c6f-512"
  },
  {
    first_name: "Myriam",
    last_name: "Delbreil",
    email: "myriam@gmail.com",
    password: "myriam",
    nickname: "mymy",
    photo: "https://ca.slack-edge.com/T02NE0241-U02TNV8D9DX-65eff4499351-512"
  }
]

users = users_h.map.with_index do |user, index|
  photo = URI.open(user[:photo])

  u = User.new(first_name: user[:first_name],
               last_name: user[:last_name],
               email: user[:email],
               password: user[:password],
               nickname: user[:nickname])
  u.photo.attach(io: photo, filename: "user#{index}.png", content_type: "image/png")
  u.save!
  u
end

maxime = users[0]
marie = users[1]
thomas = users[2]
myriam = users[3]

p "1"

users_chefs_h = [
  {
    first_name: "Ambroise",
    last_name: "Voreux",
    email: "ambroise@gmail.com",
    password: "ambroise",
    nickname: "ambroise",
    photo: "https://file1.telestar.fr/var/telestar/storage/images/3/5/8/5/3585680/ambroise-top-chef.jpeg?alias=original"
  },
  {
    first_name: "Lilian",
    last_name: "Douchet",
    email: "lilian@gmail.com",
    password: "lilian",
    nickname: "douchet",
    photo: "https://file1.telestar.fr/var/telestar/storage/images/3/5/8/9/3589030/lilian-douchet.jpeg?alias=width400&size=x100&format=jpeg"
  },
  {
    first_name: "Chloé",
    last_name: "Charles",
    email: "chloe@gmail.com",
    password: "chloec",
    nickname: "chloec",
    photo: "https://voi.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fvoi.2F2021.2F02.2F02.2F6e3e8078-d66c-4af6-8b20-4e2b89511a7b.2Ejpeg/2048x1536/quality/80/chloe-charles.jpeg"
  },
  {
    first_name: "Mory",
    last_name: "Sacko",
    email: "morysacko@gmail.com",
    password: "morysacko",
    nickname: "morysacko",
    photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Mory01.jpg/1200px-Mory01.jpg"
  },
  {
    first_name: "Sarah",
    last_name: "Mainguy",
    email: "sarah@gmail.com",
    password: "sarahm",
    nickname: "sarahm",
    photo: "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/les-dossiers-de-la-redaction/news-de-la-redaction/sarah-mainguy-podcast-a-poele-3929639/94900910-1-fre-FR/Sarah-Mainguy-de-Top-Chef-se-confie-dans-le-podcast-A-Poele.jpg"
  },
  {
    first_name: "Alexia",
    last_name: "Duchesnes",
    email: "alexia@gmail.com",
    password: "alexia",
    nickname: "alexia_d",
    photo: "https://images.rtl.fr/~c/2000v2000/rtl/www/1361958-alexia-duchene-23-ans-la-demi-finaliste-de-top-chef-saison-10.jpg"
  },
  {
    first_name: "Pierre",
    last_name: "Chomet",
    email: "pierre@gmail.com",
    password: "pierre",
    nickname: "pierre_chomet",
    photo: "https://static.wikia.nocookie.net/topchef/images/3/36/Pierrechomet1.jpg/revision/latest?cb=20210205213339&path-prefix=fr"
  },
  {
    first_name: "Amar",
    last_name: "Malki",
    email: "amar@gmail.com",
    password: "tajine",
    nickname: "amar",
    photo: "https://scontent-cdt1-1.xx.fbcdn.net/v/t1.6435-9/169994975_830013694276654_221704638336640460_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=a26aad&_nc_ohc=_1rjmqUIasYAX8I5_MT&_nc_ht=scontent-cdt1-1.xx&oh=00_AT_3-OuhDmXSzrAcQpS030HuQJCBY2YFtNu5eyNVWCzBuQ&oe=6272B262"
  }
]

users_chefs = users_chefs_h.map.with_index do |chef, index|
  photo = URI.open(chef[:photo])

  u = User.new(first_name: chef[:first_name],
               last_name: chef[:last_name],
               email: chef[:email],
               password: chef[:password],
               nickname: chef[:nickname])
  u.photo.attach(io: photo, filename: "chef#{index}.png", content_type: "image/png")
  u.save!
  u
end

ambroisev = users_chefs[0]
liliand = users_chefs[1]
chloec = users_chefs[2]
morys = users_chefs[3]
sarahm = users_chefs[4]
alexiad = users_chefs[5]
pierrec = users_chefs[6]
amarm = users_chefs[7]

p "2"

chefs_h = [
  {
    restaurants_names: "La Cabane à matelot",
    genre: "male",
    title: "Chef",
    subtitle: "Top Chef saison 13",
    user: ambroisev
  },
  {
    restaurants_names: "",
    genre: "male",
    title: "",
    subtitle: "Top Chef saison 13",
    user: liliand
  },
  {
    restaurants_names: "",
    genre: "female",
    title: "",
    subtitle: "Top Chef saison 12",
    user: chloec
  },
  {
    restaurants_names: "Mosuke",
    genre: "male",
    title: "Chef",
    subtitle: "Top Chef saison 11",
    user: morys
  },
  {
    restaurants_names: "Vacarme",
    genre: "female",
    title: "Chef",
    subtitle: "Top Chef saison 12",
    user: sarahm
  },
  {
    restaurants_names: "",
    genre: "female",
    title: "",
    subtitle: "Top Chef saison 10",
    user: alexiad
  },
  {
    restaurants_names: "",
    genre: "male",
    title: "",
    subtitle: "Top Chef saison 12",
    user: pierrec
  },
  {
    restaurants_names: "L'Etoile Berbère",
    genre: "male",
    title: "Chef",
    subtitle: "",
    user: amarm
  }
]

p "3"

chefs = chefs_h.map do |chef|
  c = Chef.new(chef)
  c.save!
  c
end

ambroise = chefs[0]
lilian = chefs[1]
chloe = chefs[2]
mory = chefs[3]
sarah = chefs[4]
alexia = chefs[5]
pierre = chefs[6]
amar = chefs[7]

p "4"

courses_simple_h = [
  {
    chef: ambroise,
    title: "Bobun au tofu",
    difficulty: "Moyen",
    duration: 50,
    category: "Asiatique",
    starts_at: DateTime.new(2022, 1, 5, 18),
    ends_at: DateTime.new(2022, 1, 5, 18) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/3026808/pexels-photo-3026808.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: lilian,
    title: "Burger savoyard, frites au fromage",
    difficulty: "Facile",
    duration: 50,
    category: "Français",
    starts_at: DateTime.new(2022, 1, 12, 18, 30),
    ends_at: DateTime.new(2022, 1, 12, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: chloe,
    title: "Riz curry coco et petits pois",
    difficulty: "Facile",
    duration: 40,
    category: "Asiatique",
    starts_at: DateTime.new(2022, 1, 13, 19),
    ends_at: DateTime.new(2022, 1, 13, 19) + 0.66.hour,
    photo_url: [
      "https://images.pexels.com/photos/674574/pexels-photo-674574.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: mory,
    title: "Mi-cuit de saumon, haricot et riz",
    difficulty: "Facile",
    duration: 35,
    category: "Français",
    starts_at: DateTime.new(2022, 1, 19, 18, 30),
    ends_at: DateTime.new(2022, 1, 19, 18, 30) + 0.58.hour,
    photo_url: [
      "https://images.pexels.com/photos/3490368/pexels-photo-3490368.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: sarah,
    title: "Gnocchis épinards et crème au soja",
    difficulty: "Facile",
    duration: 30,
    category: "Français",
    starts_at: DateTime.new(2022, 1, 25, 18),
    ends_at: DateTime.new(2022, 1, 25, 18) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/3590401/pexels-photo-3590401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: alexia,
    title: "Canard, épinards et pommes de terre grillées au four",
    difficulty: "Difficile",
    duration: 60,
    category: "Français",
    starts_at: DateTime.new(2022, 1, 27, 19, 30),
    ends_at: DateTime.new(2022, 1, 25, 18) + 1.hour,
    photo_url: [
      "https://images.pexels.com/photos/3659862/pexels-photo-3659862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Makis saumon et avocat",
    difficulty: "Moyen",
    duration: 60,
    category: "Japonais",
    starts_at: DateTime.new(2022, 2, 1, 19, 30),
    ends_at: DateTime.new(2022, 2, 1, 19, 30) + 1.hour,
    photo_url: [
      "https://images.pexels.com/photos/3642030/pexels-photo-3642030.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Pavé de boeuf, asperges, sauce au vin",
    difficulty: "Facile",
    duration: 50,
    category: "Français",
    starts_at: DateTime.new(2022, 2, 2, 18, 30),
    ends_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: alexia,
    title: "Gigot d'agneau et ses légumes de saison",
    difficulty: "Difficile",
    duration: 50,
    category: "Français",
    starts_at: DateTime.new(2022, 2, 2, 18, 30),
    ends_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: sarah,
    title: "Toast avocat, épinards et œuf",
    difficulty: "Difficile",
    duration: 30,
    category: "Français",
    starts_at: DateTime.new(2022, 2, 8, 18, 30),
    ends_at: DateTime.new(2022, 2, 8, 18, 30) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
    ]
  },
  {
    chef: mory,
    title: "Poke bowl salade, crevettes au curry, avocat",
    difficulty: "Facile",
    duration: 30,
    category: "Japonais",
    starts_at: DateTime.now + 4.day,
    ends_at: DateTime.now + 4.day + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: chloe,
    title: "Homard grillé au four, sauce à la crème et à la bisque",
    difficulty: "Difficile",
    duration: 70,
    category: "Français",
    starts_at: DateTime.now + 5.day,
    ends_at: DateTime.now + 5.day + 1.16.hour,
    photo_url: [
      "https://images.pexels.com/photos/10883374/pexels-photo-10883374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: lilian,
    title: "Risotto à la tomate, avocat et burrata",
    difficulty: "Moyen",
    duration: 45,
    category: "Italien",
    starts_at: DateTime.now + 7.day,
    ends_at: DateTime.now + 7.day + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/10766728/pexels-photo-10766728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: ambroise,
    title: "Lasagnes traditionnelles à l'italienne",
    difficulty: "Facile",
    duration: 45,
    category: "Italien",
    starts_at: DateTime.now + 2.day,
    ends_at: DateTime.now + 2.day + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/6046493/pexels-photo-6046493.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: pierre,
    title: "Pad thaï aux crevettes",
    difficulty: "Moyen",
    duration: 50,
    category: "Chinois",
    starts_at: DateTime.now + 4.day,
    ends_at: DateTime.now + 4.day + 0.83.hour,
    photo_url: [
      "https://images.pexels.com/photos/6646351/pexels-photo-6646351.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ]
  },
  {
    chef: amar,
    title: "Tajine d'agneau",
    difficulty: "Moyen",
    duration: 50,
    category: "Oriental",
    starts_at: DateTime.now + 3.day,
    ends_at: DateTime.now + 3.day + 0.83.hour,
    photo_url: [
      "https://assets.afcdn.com/recipe/20181017/82766_w1024h768c1cx1834cy2446.jpg"
    ]
  }
]

courses = courses_simple_h.map.with_index do |course, index|
  photo = URI.open(course[:photo_url].first)

  p = Course.new(chef: course[:chef],
                 title: course[:title],
                 difficulty: course[:difficulty],
                 duration: course[:duration],
                 category: course[:category],
                 starts_at: course[:starts_at],
                 ends_at: course[:ends_at])
  p.photo.attach(io: photo, filename: "course#{index}.png", content_type: 'image/png')
  p.save!
  p
end

p "5"
