Dog.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SMALL DOG GROUP
dog_1 = Dog.create(personality: "Alert, curious, loyal" , energy_level: "Somewhat active", children_friendly: true, dog_friendly: false, size: "s", barking_level: 2, breed: "Brussels Griffon")
dog_2 = Dog.create(personality: "Graceful, charming, and sassy", energy_level: "most indoor good for apt", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Chihuahua")
dog_3 = Dog.create(personality: "Spunky", energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Dachshund")
dog_4 = Dog.create(personality: "Outgoing, funny, intelligent" , energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Havanese")
dog_5 = Dog.create(personality: "Loving to family, reserved to strangers", energy_level: "Somewhat active", children_friendly: false, dog_friendly: true, size: "s", barking_level: 1, breed: "Japanese Chin")
dog_6 = Dog.create(personality: "Gentle and playful", energy_level: "Somewhat active", children_friendly: true, dog_friendly: true, size: "s", barking_level: 2, breed: "Maltese")
dog_7 = Dog.create(personality: "Happy, alert, friendly", energy_level: "Very active", children_friendly: true, dog_friendly: false, size: "s", barking_level: 2, breed: "Pappillon")
dog_8 = Dog.create(personality: "Lively, bold, and inquisitive", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Pomeranian")
dog_9 = Dog.create(personality: "Even-tempered" , energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Pug")
dog_10 = Dog.create(personality: "Sprightly, tomboyish, and affectionage", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "s", barking_level: 2, breed: "Yorkshire Terrier")

# MIDDLE DOG GROUP
dog_11 = Dog.create(personality: 'Bright, upbeat, fun-loving at home; a tireless, enthusiastic worker', energy_level: 'Very Active; Energetic and alert, Brittanys need plenty of exercise—preferably along their favorite human', children_friendly: false, dog_friendly: false, size: 'm', barking_level: 2, breed: 'Brittany')
dog_12 = Dog.create(personality: 'Calm, courageous, and friendly; dignified but amusing', energy_level: 'Bulldogs won\'t beg to be exercised, but they require regular walks and the occasional romp', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 1, breed: 'Bulldog')
dog_13 = Dog.create(personality: 'Happy, smart, gentle', energy_level: 'Very Active; Energetic sporting dogs, Cockers love their playtime and brisk walks', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 2, breed: 'Cocker Spaniel')
dog_14 = Dog.create(personality: 'Friendly, playful, obedient at home; hardworking and steady in the field', energy_level: 'Very Active; Built for long days as hunters’ companions, Springers need regular exercise for optimum mental and physical health', children_friendly: false, dog_friendly: false, size: 'm', barking_level: 2, breed: 'English Springer Spaniel')
dog_15 = Dog.create(personality: 'Smart and alert, affectionate but not pushy, bold but kindly.', energy_level: 'Very Active; A strong and athletic little dog, the Pembroke loves physical activity and is happiest when he has a job to do', children_friendly: false , dog_friendly: false, size: 'm', barking_level: 2, breed: 'Pembroke Welsh Corgi')
dog_16 = Dog.create(personality: 'Bright, playful, and energetic', energy_level: 'Very Active; Shelties enjoy a good run; tap into their herding heritage with tasked-based exercise', children_friendly: true, dog_friendly: true, size: 'm', barking_level: 3, breed: 'Shetland Sheepdog')
dog_17 = Dog.create(personality: 'Calm, affectionate, and playful', energy_level: 'Somewhat Active; This breed has spurts of energetic moments followed by a lazy afternoon', children_friendly: false, dog_friendly: true, size: 'm', barking_level: 1, breed: 'Whippet')

# LARGE DOG GROUP
dog_18 = Dog.create(personality: "Friendly, patient, dependable", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "l", barking_level: 3, breed: "Great Dane")
dog_19 = Dog.create(personality: "Courageous", energy_level: "Somewhat active", children_friendly: true, dog_friendly: false, size: "l", barking_level: 3, breed: "Mastiff")
dog_20 = Dog.create(personality: "Sweet, patient, devoted", energy_level: "S", children_friendly: true, dog_friendly: false, size: "l", barking_level: 2, breed: "Newfoundland")
dog_21 = Dog.create(personality: "Calm, patient, smart", energy_level: "Somewhat active", children_friendly: false, dog_friendly: false, size: "l", barking_level: 3, breed: "Great Pyrenees")
dog_22 = Dog.create(personality: "Good-natured, calm", energy_level: "Love outdoor activities", children_friendly: true, dog_friendly: true, size: "l", barking_level: 2, breed: "Bernese Mountain Dog")
dog_23 = Dog.create(personality: 'Loyal, affectionate, and protective; courageous but not aggressive', energy_level: 'Not Very Active; A couple of good walks a day and a backyard romp are sufficient', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Dogue De Bordeaux')
dog_24 = Dog.create(personality: 'Smart, trainable, and noble of bearing; assertive and confident, Corsi are peerless protectors', energy_level: 'Corsi are smart, trainable, eager to please, versatile, and docile and intensely loyal with their humans', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Cane Corso ')
dog_26 = Dog.create(personality: 'Bright, patient, loving, and family oriented', energy_level: 'Somewhat Active; Rambunctious when pups, adult Leos enjoy long walks and activities like swimming and cart pulling', children_friendly: true, dog_friendly: false, size:'l', barking_level: 2, breed: 'Leonberger')
dog_27 = Dog.create(personality: 'Calm, dignified, kindly; courageous but not aggressive', energy_level: 'Somewhat Active; Mellow and docile, IWs are still athletic coursing hounds who enjoy a good gallop', children_friendly: false, dog_friendly: false, size: 'l', barking_level: 2, breed: 'Irish Wolfhound')
dog_28 = Dog.create(personality: 'Dignified, gentle, polite; quietly intelligent and perceptive', energy_level: 'Somewhat Active; A nuzzler and napper indoors; a world-class galloper on the straightway', children_friendly: false, dog_friendly: true, size: 'l', barking_level: 2, breed: 'Scottish Deerhound')
