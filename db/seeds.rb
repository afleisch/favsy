
ashley = User.create(email: "ashley@gmail.com", password: "asdfgh", password_confirmation: "asdfgh")
lauren = User.create(email: "lauren@gmail.com", password: "rosie1", password_confirmation: "rosie1")
# User.create(email: "linda@gmail.com", password: "frank", password_confirmation: "frank")


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

lauren.things.create(name: "Bette", description: "beauty", reason: "stylist who can cut and style thick hair",
	street: "3915 24th Street", city: "San Francisco", state: "CA", zip_code: "94114")
lauren.things.create(name: "Tea Way", description: "cafe", reason: "great bubble tea, has good variety of boba",
	street: "2150 Irving Avenue", city: "San Francisco", state: "CA", zip_code: "94122")




