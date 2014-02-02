
ashley = User.create(email: "ashley@gmail.com", password: "asdf", password_confirmation: "asdf")
# User.create(email: "lauren@gmail.com", password: "rosie", password_confirmation: "rosie")
# User.create(email: "linda@gmail.com", password: "frank", password_confirmation: "frank")

ashley.things.create(name: "Pork Slope", description: "Restaurant", 
	reason: "delicious BBQ, great bar, has pool table", street: "247 5th Avenue", 
	city: "Brooklyn", state: "NY", zip_code: "11215")

ashley.things.create(name: "Pork Slope", description: "Restaurant", 
reason: "delicious BBQ, great bar, has pool table", street: "247 5th Avenue", 
city: "Brooklyn", state: "NY", zip_code: "11215")
ashley.things.create(name: "Laura Mercier Tinted Moisturizer", description: "Beauty", reason: "lightweight",
street: "597 5th Avenue", city: "New York", state: "NY", zip_code: "10017")
ashley.things.create(name: "Fig & Olive Arbequina", description: "Food", reason: "delicious olive oil good for dipping/drizzling not cooking", street: "420 West 13th Street", 
city: "New York", state: "NY", zip_code: "10014")
ashley.things.create(name: "Clooney's", description: "Bar", reason: "local dive bar with cheap pitchers and amazing grilled cheese with apples and bacon", street: "1401 Valencia Street", 
city: "San Francisco", state: "CA", zip_code: "94110")
ashley.things.create(name: "smallfrys", description: "Store", reason: "great baby clothes for Rosie", 
street: "4066 24th Street", city: "San Francisco", state: "CA", zip_code: "94114")
ashley.things.create(name: "MUNI", description: "Transportation", reason: "the WORST public transporation system, takes forever and goes nowhere", street: "1 S Van Ness Avenue",
city: "San Francisco", state: "CA", zip_code: "94103")
ashley.things.create(name: "Ten Sushi", description: "Restaurant", reason: "they don't use fresh fish, found a scale in tuna", 
street: "440 7th Avenue", city: "Brooklyn", state: "NY", zip_code: "11215")



