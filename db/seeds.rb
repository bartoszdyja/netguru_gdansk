# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: "Movies"}, {name: "Music"}, {name: "Books"}, {name: "Hobbies"}, {name: "Games"}, {name: "TV Shows"} ])
products = Product.create([
	{title: "Titanic", description: "Titanic is a 1997 American epic romantic disaster film directed, written, co-produced, and co-edited by James Cameron. A fictionalized account of the sinking of the RMS Titanic, it stars Leonardo DiCaprio and Kate Winslet as members of different social classes who fall in love aboard the ship during its ill-fated maiden voyage. Cameron's inspiration for the film came from his fascination with shipwrecks; he felt a love story interspersed with the human loss would be essential to convey the emotional message of the disaster. Production began in 1995, when Cameron shot footage of the actual Titanic wreck. The modern scenes on the research vessel were shot on board the Akademik Mstislav Keldysh, which Cameron had used as a base when filming the wreck. Scale models, computer-generated imagery, and a reconstruction of the Titanic built at Playas de Rosarito in Baja California were used to re-create the sinking. The film was partially funded by Paramount Pictures and 20th Century Fox; at the time, it was the most expensive film ever made, with an estimated budget of $200 million. Upon its release on December 19, 1997, Titanic achieved critical and commercial success. Nominated for fourteen Academy Awards, it tied All About Eve (1950) for the most Oscar nominations, and won eleven, including the awards for Best Picture and Best Director, tying Ben Hur (1959) for the most Oscars won by a single film. With an initial worldwide gross of over $1.84 billion, Titanic was the first film to reach the billion-dollar mark. It remained the highest-grossing film of all time until Cameron's 2009 film Avatar surpassed it in 2010. A 3D version of Titanic, released on April 4, 2012 to commemorate the centennial of the sinking, earned it an additional $343.6 million worldwide, pushing the film's worldwide total to $2.18 billion. It became the second film to gross more than $2 billion worldwide (after Avatar).", price: "13.50", category_id: "1", user_id: "1"},
	{title: "The Shawshank Redemption", description: "Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940's, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner.", price: "9.30", category_id: "1", user_id: "2"},
	{title: "Pulp Fiction", description: "Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.", price: "23.30", category_id: "1", user_id: "3"},
	{title: "Lord of the Rings", description: "While Frodo & Sam continue to approach Mount Doom to destroy the One Ring, unaware of the path Gollum is leading them, the former Fellowship aid Rohan & Gondor in a great battle in the Pelennor Fields, Minas Tirith and the Black Gates as Sauron wages his last war against Middle-Earth.", price: "9.30", category_id: "1", user_id: "4"},
	{title: "Dark Side of the Moon", description: "The Dark Side of the Moon is the eighth studio album by the English progressive rock band Pink Floyd, released in March 1973. It built on ideas explored in the band's earlier recordings and live shows, but lacks the extended instrumental excursions that characterised their work following the departure in 1968 of founder member, principal composer, and lyricist, Syd Barrett. The themes on The Dark Side of the Moon include conflict, greed, the passage of time, and mental illness, the latter partly inspired by Barrett's deteriorating mental state.", price: "2.34", category_id: "2", user_id: "4"},
	])
reviews = Review.create([{content: "Very good movie", rating: 5, product_id: 1, user_id:1},
						{content: "Average", rating: 2, product_id: 1, user_id:2},
						{content: "Brilliant", rating: 5, product_id: 2, user_id:3},
						{content: "Bad movie. Worst time in the cinema ever.", rating: 1, product_id: 2, user_id:4},
						{content: "Really hoped the guy didn't drown.", rating: 1, product_id: 1, user_id:5}
						])
users = User.create([{firstname: "Admin", lastname: "Adminowsky", email: "admin@admin.com", password: "password", password_confirmation: "password", admin: true},
					{firstname: "Stuart", lastname: "Standard", email: "stuart@user.com", password: "password", password_confirmation: "password", admin: false},
					{firstname: "John", lastname: "Morris", email: "john.morris@example.com", password: "password", password_confirmation: "password", admin: false},
					{firstname: "Michael", lastname: "Johnes", email: "mikkey@blah.com", password: "password", password_confirmation: "password", admin: false},
					{firstname: "Monica", lastname: "Gellert", email: "mon@friend.com", password: "password", password_confirmation: "password", admin: false},
					{firstname: "Eric", lastname: "Queen", email: "eq12@eric.com", password: "password", password_confirmation: "password", admin: false}])
