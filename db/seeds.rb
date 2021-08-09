Activity.destroy_all
User.destroy_all

john_doe = User.create!(email: "john.doe@example.com", first_name: "John", last_name: "Doe", password: "123456")
Activity.create!(
  user: john_doe,
  title: "User registered",
  body: "New user registered with the next attributes: First Name - John, Last Name - Doe",
  event: :user_registered
)

darth_vader = User.create!(
  email: "darth.vader@example.com",
  first_name: "Darth",
  last_name: "Vader",
  password: "123456"
)
Activity.create!(
  user: darth_vader,
  title: "User registered",
  body: "New user registered with the next attributes: First Name - Darth, Last Name - Vader",
  event: :user_registered
)

more = PublicCatering.create!(
  name: "More",
  rating: 65.3,
  address: "Kazan, Karla Marksa 5",
  start_working: Time.zone.parse("18:00"),
  end_working: Time.zone.parse("00:00")
)

relab = PublicCatering.create!(
  name: "ReLab",
  rating: 85.3,
  address: "Kazan, Baumana 9a",
  start_working: Time.zone.parse("15:00"),
  end_working: Time.zone.parse("00:00")
)

BeerPub.create!(
  public_catering: more,
  has_kicker: true
)
BeerPub.create(
  public_catering: relab,
  has_kicker: false
)

CocktailBar.create!(
  public_catering: more
)
CocktailBar.create!(
  public_catering: relab
)

WineBar.create!(
  public_catering: more,
  has_sommelier: true
)
WineBar.create!(
  public_catering: relab,
  has_sommelier: false
)

# Cafe.create!(
#   public_catering: relab
# )
# Cafe.create!(
#   public_catering: more
# )

food_1 = Food.create!(
  name: 'Lazania',
  product_composition: 'Bread, chicken, oil'
)
food_2 = Food.create!(
  name: 'Bortsh',
  product_composition: 'Water, salt, oil'
)

guest = Guest.create!(
  user: darth_vader
)
worker = Worker.create!(
  user: john_doe,
  public_catering: relab,
  role: "waiter",
  rating: 99,
  salary: 12,
  beginning_work: Time.zone.parse("2020-07-06 14:30")
)

# bad_review = Review.create!(
#   title: "It's a bad place",
#   text: "Lorem ipsum dolorum",
#   rating: 12.2,
#   public_catering: more,
#   guest: guest
# )
# good_review = Review.create!(
#   title: "It's a good place",
#   text: "Lorem ipsum dolorum",
#   rating: 91.2,
#   public_catering: relab,
#   worker: worker
# )

# Comment.create!(
#   review: bad_review,
#   text: 'Not confirm this',
#   worker: worker
# )
# Comment.create!(
#   review: good_review,
#   text: 'Confirm this',
#   guest: guest
# )

price_21_usd = Price.create!(
  currency: 'usd',
  cost: 21
)
price_1_eur = Price.create!(
  currency: 'eur',
  cost: 1
)
price_21_rub = Price.create!(
  currency: 'rub',
  cost: 21
)

beer_1 = Beer.create!(
  name: 'Hamovniki',
  abv: 12.1,
  ibu: 32.1,
  country: "German",
  type: "ale",
  price: price_1_eur
)
beer_2 = Beer.create!(
  name: 'Shmel',
  abv: 12.2,
  ibu: 2.1,
  country: "Russia",
  type: "lager",
  price: price_21_rub
)

coctail_1 = Coctail.create!(
  price: price_21_rub,
  name: "Americano",
  alcogolic_composition: "Campari, sweet vermouth, soda",
  type: "strong"
)
coctail_2 = Coctail.create!(
  price: price_21_usd,
  name: "White Russian",
  alcogolic_composition: "Vodka, cream liquor",
  type: "creamy"
)

wine_1 = Wine.create!(
  price: price_1_eur,
  name: "Shato",
  abv: 12.1,
  country: "Spain",
  type: "red",
  year: 2000
)
wine_2 = Wine.create!(
  price: price_21_usd,
  name: "Caberne",
  abv: 22.1,
  country: "Russia",
  type: "red",
  year: 2010
)

Menu.create!(
  name: "Breads & Bads",
  wines: [wine_1, wine_2],
  beers: [beer_1],
  foods: [food_1]
)
Menu.create!(
  name: "Soft soft soft",
  coctails: [coctail_1, coctail_2],
  beers: [beer_1, beer_2],
  foods: [food_1, food_2]
)

