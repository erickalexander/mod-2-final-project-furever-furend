Dog.destroy_all
# User.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SMALL DOG GROUP
dog_1 = Dog.create(personality: "Alert, curious, loyal" , energy_level: "Somewhat active", children_friendly: true, dog_friendly: false, size: "s", barking_level: 2, breed: "Brussels Griffon", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Brussels-Griffon-2.jpg')
dog_2 = Dog.create(personality: "Graceful, charming, and sassy", energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Chihuahua", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Chihuahua-2.jpg')
dog_3 = Dog.create(personality: "Spunky", energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Dachshund", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Dachshund-2.jpg')
dog_4 = Dog.create(personality: "Outgoing, funny, intelligent" , energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Havanese", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Havanese-2.jpg')
dog_5 = Dog.create(personality: "Loving to family, reserved to strangers", energy_level: "Somewhat active", children_friendly: false, dog_friendly: true, size: "s", barking_level: 1, breed: "Japanese Chin", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Japanese-Chin-2.jpg')
dog_6 = Dog.create(personality: "Gentle and playful", energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Maltese", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Maltese-2.jpg')
dog_7 = Dog.create(personality: "Happy, alert, friendly", energy_level: "Very active", children_friendly: true, dog_friendly: false, size: "s", barking_level: 2, breed: "Pappillon", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Papillon-dog-2.jpg')
dog_8 = Dog.create(personality: "Lively, bold, and inquisitive", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Pomeranian", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Pomeranian-2.jpg')
dog_9 = Dog.create(personality: "Even-tempered" , energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Pug", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Pug-2.jpg')
dog_10 = Dog.create(personality: "Sprightly, tomboyish, and affectionage", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Yorkshire Terrier", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Yorkshire-Terrier-2.jpg')

# MIDDLE DOG GROUP
dog_11 = Dog.create(personality: 'Bright, upbeat, fun-loving at home; a tireless, enthusiastic worker', energy_level: 'Very active', children_friendly: false, dog_friendly: false, size: 'm', barking_level: 2, breed: 'Brittany', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Brittany-2.jpg')
dog_12 = Dog.create(personality: 'Calm, courageous, and friendly; dignified but amusing', energy_level: 'Not very active', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 1, breed: 'Bulldog', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Bulldog-2.jpg')
dog_13 = Dog.create(personality: 'Happy, smart, gentle', energy_level: 'Very active', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 2, breed: 'Cocker Spaniel', link: 'http://r.ddmcdn.com/s_f/o_1/APL/uploads/2014/10/adopting-a-cocker-spaniel0.jpg')
dog_14 = Dog.create(personality: 'Friendly, playful, obedient at home; hardworking and steady in the field', energy_level: 'Very active', children_friendly: false, dog_friendly: false, size: 'm', barking_level: 2, breed: 'English Springer Spaniel', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/English-Springer-Spaniel-2.jpg')
dog_15 = Dog.create(personality: 'Smart and alert, affectionate but not pushy, bold but kindly.', energy_level: 'Very active', children_friendly: false , dog_friendly: false, size: 'm', barking_level: 2, breed: 'Pembroke Welsh Corgi', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Pembroke-Welsh-Corgi-2.jpg')
dog_16 = Dog.create(personality: 'Bright, playful, and energetic', energy_level: 'Very active', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 3, breed: 'Shetland Sheepdog', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Shetland-Sheepdog-2.jpg')
dog_17 = Dog.create(personality: 'Calm, affectionate, and playful', energy_level: 'Somewhat active', children_friendly: false, dog_friendly: true, size: 'm', barking_level: 1, breed: 'Whippet', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Whippet-2.jpg')

# LARGE DOG GROUP
dog_18 = Dog.create(personality: "Friendly, patient, dependable", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "l", barking_level: 3, breed: "Great Dane", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Great-Dane-2.jpg')
dog_19 = Dog.create(personality: "Courageous", energy_level: "Somewhat active", children_friendly: true, dog_friendly: false, size: "l", barking_level: 3, breed: "Mastiff", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Mastiff-2.jpg')
dog_20 = Dog.create(personality: "Sweet, patient, devoted", energy_level: "Somewhat active", children_friendly: true, dog_friendly: false, size: "l", barking_level: 2, breed: "Newfoundland", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Newfoundland-2.jpg')
dog_21 = Dog.create(personality: "Calm, patient, smart", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "l", barking_level: 3, breed: "Great Pyrenees", link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Great-Pyrenees-2.jpg')
dog_22 = Dog.create(personality: "Good-natured, calm", energy_level: "Very active", children_friendly: true, dog_friendly: true, size: "l", barking_level: 2, breed: "Bernese Mountain Dog", link:'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Bernese-Mountain-Dog-2.jpg')
dog_23 = Dog.create(personality: 'Loyal, affectionate, and protective; courageous but not aggressive', energy_level: 'Not very active', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Dogue De Bordeaux', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Dogue-de-Bordeaux-2.jpg')
dog_24 = Dog.create(personality: 'Smart, trainable, and noble of bearing; assertive and confident', energy_level: 'Somewhat active', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Cane Corso ', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Cane-Corso-Italiano-2.jpg')
dog_25 = Dog.create(personality: 'Bright, patient, loving, and family oriented', energy_level: 'Somewhat active', children_friendly: true, dog_friendly: false, size:'l', barking_level: 2, breed: 'Leonberger', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Leonberger-2.jpg')
dog_26 = Dog.create(personality: 'Calm, dignified, kindly; courageous but not aggressive', energy_level: 'Somewhat active', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Irish Wolfhound', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Irish-Wolfhound-2.jpg')
dog_27 = Dog.create(personality: 'Dignified, gentle, polite; quietly intelligent and perceptive', energy_level: 'Somewhat active', children_friendly: false, dog_friendly: true, size: 'l', barking_level: 2, breed: 'Scottish Deerhound', link: 'http://www.dogbreedslist.info/uploads/allimg/dog-pictures/Scottish-Deerhound-2.jpg')
