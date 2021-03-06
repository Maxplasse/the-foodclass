require "open-uri"

p "Destroying posts"
Post.destroy_all
p "Destroying participations"
Participation.destroy_all
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
    first_name: "Chlo??",
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
    restaurants_names: "La Cabane ?? matelot",
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
    restaurants_names: "L'Etoile Berb??re",
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
    ],
    ingredients: ["280g de Tofou marin?? ?? la japonaise SOY", "250g de vermicelles de riz", "4 carottes", "?? concombre", "2 cuiller??es ?? soupe de cacahu??tes concass??es", "3 cuiller??es ?? soupe de vinaigre de riz", "4 cuiller??es ?? soupe d'eau", "1 cuiller??e ?? soupe de sucre"]
  },
  {
    chef: lilian,
    title: "Burger savoyard, frites au fromage",
    difficulty: "Facile",
    duration: 50,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 1, 12, 18, 30),
    ends_at: DateTime.new(2022, 1, 12, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["4 buns", "4 steaks hach??s", "4 oignons", "4 tranches de cheddar", "12 tranches de bacon", "500g de pommes de terre", "sauce barbecue"]
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
    ],
    ingredients: ["350g de petits pois frais", "120g de riz basmati", "1 oignon", "2 cuill??res ?? soupe de curry", "25cl de lait de coco + 15cl d'eau"]
  },
  {
    chef: mory,
    title: "Mi-cuit de saumon, haricot et riz",
    difficulty: "Facile",
    duration: 35,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 1, 19, 18, 30),
    ends_at: DateTime.new(2022, 1, 19, 18, 30) + 0.58.hour,
    photo_url: [
      "https://images.pexels.com/photos/3490368/pexels-photo-3490368.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["600g Haricots verts", "300g de pav?? de saumon", "120g de riz basmati", "2 ??chalotes"]
  },
  {
    chef: sarah,
    title: "Gnocchis ??pinards et cr??me au soja",
    difficulty: "Facile",
    duration: 30,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 1, 25, 18),
    ends_at: DateTime.new(2022, 1, 25, 18) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/3590401/pexels-photo-3590401.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["300g gnocchis frais", "200g blanc de poulet", "200g d'??pinards en branches", "20cl cr??me de soja", "sel, poivre"]
  },
  {
    chef: alexia,
    title: "Canard, ??pinards et pommes de terre grill??es au four",
    difficulty: "Difficile",
    duration: 60,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 1, 27, 19, 30),
    ends_at: DateTime.new(2022, 1, 25, 18) + 1.hour,
    photo_url: [
      "https://images.pexels.com/photos/3659862/pexels-photo-3659862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["2 magrets de canar", "500g d'??pinards en branches", "1 pomme de terre", "1 c.??.s de cr??me fra??che"]
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
    ],
    ingredients: ["300g de riz rond japonais", "30cl d'eau", "4 cuill??res ?? soupe de vinaigre de riz", "8 ?? 10 demi-feuilles de nori", "130g de saumon cru", "1 avocat", "1 citron", "Sauce soja", "Sauce soja sucr??e", "wasabi"]
  },
  {
    chef: pierre,
    title: "Pav?? de boeuf, asperges, sauce au vin",
    difficulty: "Facile",
    duration: 50,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 2, 2, 18, 30),
    ends_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["4 pav??s de boeuf", "2dl de Pinot Noir (ou autre vin rouge)", "4 longues asperges vertes", "2 c??c de vinaigre balsamique", "sel, poivre"]
  },
  {
    chef: alexia,
    title: "Gigot d'agneau et ses l??gumes de saison",
    difficulty: "Difficile",
    duration: 50,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 2, 2, 18, 30),
    ends_at: DateTime.new(2022, 2, 2, 18, 30) + 0.84.hour,
    photo_url: [
      "https://images.pexels.com/photos/323682/pexels-photo-323682.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["1 gigot d'agneau de 1,5kg", "8 grosses pommes de terre", "3 gousses d'ail pel??es", "75g de beurre fondu", "1 brocoli", "12 carottes"]
  },
  {
    chef: sarah,
    title: "Toast avocat, ??pinards et ??uf",
    difficulty: "Difficile",
    duration: 30,
    category: "Fran??ais",
    starts_at: DateTime.new(2022, 2, 8, 18, 30),
    ends_at: DateTime.new(2022, 2, 8, 18, 30) + 0.5.hour,
    photo_url: [
      "https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
    ],
    ingredients: ["4 tranches de pain de meule", "2 poign??es de feuilles d'??pinard", "2 avocats", "2 oeufs", "1 citron", "Sel et poivre", "1 gousse d'ail"]
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
    ],
    ingredients: ["120g de quinoa", "2 carottes", "2 avocats", "1 mangue", "120g de crevettes", "1 c.??.c de curry"]
  },
  {
    chef: chloe,
    title: "Homard grill?? au four et sa bisque, sauce ?? la cr??me",
    difficulty: "Difficile",
    duration: 70,
    category: "Fran??ais",
    starts_at: DateTime.now + 5.day,
    ends_at: DateTime.now + 5.day + 1.16.hour,
    photo_url: [
      "https://images.pexels.com/photos/10883374/pexels-photo-10883374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["1Homard breton d'environ 600g", "50g Beurre", "3??chalotes", "20cl Cr??me fra??che liquide enti??re", "12Brins de ciboulette fra??che cisel??s", "1oignon", "80g de farine", "40cl de vin blanc"]
  },
  {
    chef: lilian,
    title: "Risotto ?? la tomate, avocat et burrata",
    difficulty: "Moyen",
    duration: 45,
    category: "Italien",
    starts_at: DateTime.now + 7.day,
    ends_at: DateTime.now + 7.day + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/10766728/pexels-photo-10766728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["200g	Riz sp??cial risotto", "500ml	Pulpe de tomate", "1	Oignon jaune", "1	Burrata", "1 avocat", "100g	Pecorino romano", "30cl de vin blanc"]
  },
  {
    chef: ambroise,
    title: "Lasagnes traditionnelles ?? l'italienne",
    difficulty: "Facile",
    duration: 45,
    category: "Italien",
    starts_at: DateTime.now + 2.day,
    ends_at: DateTime.now + 2.day + 0.75.hour,
    photo_url: [
      "https://images.pexels.com/photos/6046493/pexels-photo-6046493.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["8 plaques de lasagnes", "700g de sauce tomate maison", "500g de viande hach??e", "3 oeufs", "100g de parmesan", "1l de lait", "70g de beurre", "70g de farine"]
  },
  {
    chef: pierre,
    title: "Pad tha?? aux crevettes",
    difficulty: "Moyen",
    duration: 50,
    category: "Chinois",
    starts_at: DateTime.now + 4.day,
    ends_at: DateTime.now + 4.day + 0.83.hour,
    photo_url: [
      "https://images.pexels.com/photos/6646351/pexels-photo-6646351.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    ],
    ingredients: ["400g de nouilles de riz", "40g de cacahu??tes", "20 grosses crevettes", "2 oeufs", "1grosse poign??e Germes de soja" ]
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
    ],
    ingredients: ["500g pruneau", "1,5kg ??paule d'agneau", "500g d'oignon", "30cl huile d'olive", "5 branches de coriandre", "3 c.??.s miel", "2 gousses d'ail", "1/2 c.??.s cannelle"]
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
                 ingredients: course[:ingredients],
                 ends_at: course[:ends_at])
  p.photo.attach(io: photo, filename: "course#{index}.png", content_type: 'image/png')
  p.save!
  p
end

p "5"

max_part = []
marie_part = []
thomas_part = []
myriam_part = []

courses.each do |course|
  max_part << Participation.create!(course: course, user: maxime, favorite: false)
  marie_part << Participation.create!(course: course, user: marie, favorite: false)
  thomas_part << Participation.create!(course: course, user: thomas, favorite: false)
  myriam_part << Participation.create!(course: course, user: myriam, favorite: false)
end

p "6"

posts_h = [
  {
    content: "Recette excellente ! Un beau moment de partage avec Ambroise",
    participation: max_part[0],
    course: courses[0],
    posted_at: DateTime.new(2022, 1, 20, 17, 27),
    photo_url: "https://img-3.journaldesfemmes.fr/Dv4No5oSzA4-mYG4QYiXZRInjhs=/750x500/smart/0858995addb849bdb295719d05cf406c/recipe-jdf/10033576.jpg"
  },
  {
    content: "Un d??licieux riz curry coco sous les conseils de Chlo?? Charles. On s'est r??gal?? ! ",
    participation: marie_part[2],
    course: courses[2],
    posted_at: DateTime.new(2022, 3, 1, 18, 57),
    photo_url: "https://res.cloudinary.com/hv9ssmzrz/image/fetch/c_fill,f_auto,h_488,q_auto,w_650/https://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/recipe_photos/original/140940/DSC_0390.jpg"
  },
  {
    content: "Recette suive ?? la lettre, tr??s bonne recette avec Mory Sacko",
    participation: thomas_part[3],
    course: courses[3],
    posted_at: DateTime.new(2021, 12, 1, 15, 2),
    photo_url: "https://i.ytimg.com/vi/Jke_paxHCUc/sddefault.jpg"
  },
  {
    content: "Recette plut??t facile, mes gnocchis ??taient bien fermes et dor??s ! Je recommande",
    participation: myriam_part[4],
    course: courses[4],
    posted_at: DateTime.new(2022, 1, 5, 9, 14),
    photo_url: "https://img.cuisine-etudiant.fr/image/recette/800500/da8329134318fb87d7d17effb25ccabe9c12adcb-gnocchis-epinards-champignons-et-mozzzzaaaa.jpeg"
  },
  {
    content: "Canard cuisson lente ?? la po??le, recette complexe mais incroyable r??sultat. ",
    participation: max_part[5],
    course: courses[5],
    posted_at: DateTime.new(2022, 1, 5, 9, 32),
    photo_url: "https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2020.2F05.2F06.2Fed655561-3904-4b22-8064-8779e5e0adc8.2Ejpeg/748x372/quality/80/crop-from/center/magret-de-canard-et-pommes-de-terre-sautees.jpeg"
  },
  {
    content: "Pierre a pris son temps pour bien expliquer cette recette asseaz complexe. Un r??gal!",
    participation: marie_part[6],
    course: courses[6],
    posted_at: DateTime.new(2021, 11, 4, 15, 23),
    photo_url: "https://static.750g.com/images/1200-630/dc55b155cecbd4a45c1f0131c1d7850c/makis-saumon-et-avocat.jpeg"
  },
  {
    content: "Le secret du plat c'est la sauce au vin. Awesome ! Chef ?? l'??coute et p??dagogue",
    participation: thomas_part[7],
    course: courses[7],
    posted_at: DateTime.new(2021, 8, 10, 9, 19),
    photo_url: "https://recettes.de/images/blogs/edith-et-sa-cuisine/pave-de-boeuf-sauce-grand-veneur-523.640x480.jpg"
  },
  {
    content: "La cuisson du gigot est primordiale, pour ma part j'ai suivi les consignes ?? la lettre et le r??sultat est plus que convenable",
    participation: myriam_part[8],
    course: courses[8],
    posted_at: DateTime.new(2022, 2, 19, 10, 12),
    photo_url: "http://p0.storage.canalblog.com/01/46/208183/61625287.jpg"
  },
  {
    content: "Recette simple et efficace",
    participation: max_part[9],
    course: courses[9],
    posted_at: DateTime.new(2022, 2, 18, 15, 55),
    photo_url: "https://cuisine-addict.com/wp-content/uploads/2015/06/avocado-toast.jpg"
  },
  {
    content: "Un vrai voyage au Maroc !",
    participation: marie_part[15],
    course: courses[15],
    posted_at: DateTime.new(2022, 2, 24, 23, 55),
    photo_url: "https://www.la-cuisine-marocaine.com/photos-recettes/01-tajine-d-agneau-aux-pruneaux-et-amandes.jpg"
  },
  {
    content: "Un r??gal, merci beaucoup Amar pour ce cours !",
    participation: max_part[15],
    course: courses[15],
    posted_at: DateTime.new(2022, 2, 25, 11, 34),
    photo_url: "https://cuisine.nessma.tv/uploads/6/2020-06/427e390cfd1beebf9993c7363d810029.jpg"
  }

]

posts_h.map do |post|
  photo = URI.open(post[:photo_url])
  new_post = Post.create!(content: post[:content],
                          participation: post[:participation],
                          posted_at: post[:posted_at],
                          course: post[:course])
  new_post.photo.attach(io: photo, filename: "post.png", content_type: 'image/png')
  new_post.save!
  new_post
end

p "7"
