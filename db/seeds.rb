catFunny = Category.create(name:"Funny")
catPolitical = Category.create(name:"Political")
catSmart = Category.create(name:"Smart")
catProgrammers = Category.create(name:"For Programmers")

subcat_punny = Subcategory.create(name:"Punny", category: catFunny)
subcat_republican = Subcategory.create(name:"Republican", category: catPolitical)
subcat_scientific = Subcategory.create(name:"Scientific", category: catSmart)
subcat_ruby = Subcategory.create(name:"Ruby", category: catProgrammers)

dongchul = User.create(name: "Dongchul", email: "donchul@dongchul.com", password: "dongchul")
gary = User.create(name: "Gary", email: "gary@gary.com", password: "gary")
rosa = User.create(name: "Rosa", email: "rosa@rosa.com", password: "rosa")
anna = User.create(name: "Anna", email: "anna@anna.com", password: "anna")

Quote.create(text: "I'm reading a book about antigravity. It's impossible to put down.", user: gary, subcategory: subcat_punny)
Quote.create(text: "Did you know that the average 4 year old asks over four hundred questions a day.", user: gary, subcategory: subcat_scientific)
