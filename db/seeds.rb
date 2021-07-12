# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
  {
    username: "jdub", 
    email: "jaywengrow@example.com", 
    password: "password",
    name: "Jay Wengrow", 
    image_url: "image.jpg", 
    bio: "Sup!", 
    current_location: "Chi Town", 
    active: false
  },
  {
    username: "dub_b", 
    email: "winstonbarbe@example.com", 
    password: "password",
    name: "Winston Barbe", 
    image_url: "profile_pic.jpg", 
    bio: "Im steppin out on the town tonight!", 
    current_location: "Athens, GA", 
    active: true
  },
  {
    username: "lil_comer", 
    email: "comer@example.com", 
    password: "password",
    name: "Comer", 
    image_url: "profile_pic.jpg", 
    bio: "Bark bark.... until dawn", 
    current_location: "Athens, GA", 
    active: false
  },
  {
    username: "MileyCyrus22", 
    email: "mileycyrus@example.com", 
    password: "password",
    name: "Miley Cyrus", 
    image_url: "profile_pic.jpg", 
    bio: "Best of both worlds..", 
    current_location: "Laws Angeles, CA", 
    active: true
  },
  {
    username: "hunterpinkstone_666", 
    email: "hunterpinksten@example.com", 
    password: "password",
    name: "Hunter Pinkston", 
    image_url: "profile_pic.jpg", 
    bio: "Catch me outside..", 
    current_location: "Athens, GA", 
    active: false
  },
  {
    username: "timduncan", 
    email: "timduncan@example.com", 
    password: "password",
    name: "Tim", 
    image_url: "profile_pic.jpg", 
    bio: "A fugitive must be a rolling stone", 
    current_location: "Athens, GA", 
    active: true
  },
  {
    username: "roberta_gobert", 
    email: "robertagobert@example.com", 
    password: "password",
    name: "Roberta", 
    image_url: "profile_pic.jpg", 
    bio: "I want to settle down, but they won't let me", 
    current_location: "Athens, GA", 
    active: false
  },
  {
    username: "lacey_ball", 
    email: "lacey_ball@example.com", 
    password: "password",
    name: "Lacey", 
    image_url: "profile_pic.jpg", 
    bio: "Down every road there's always one more city", 
    current_location: "Athens, GA", 
    active: true
  },
  {
    username: "kristidunn", 
    email: "kristi@example.com", 
    password: "password",
    name: "Kristi", 
    image_url: "profile_pic.jpg", 
    bio: "I'm a hunted fugitive with just two ways: outrun the law or spend my life in jail", 
    current_location: "Athens, GA", 
    active: false
  },
  {
    username: "zachlevine", 
    email: "zach@example.com", 
    password: "password",
    name: "Zach", 
    image_url: "profile_pic.jpg", 
    bio: "I'm on the run, the highway is my home", 
    current_location: "Athens, GA", 
    active: true
  }
])

Connection.create!([
  {
    sender_id: 1, 
    recipient_id: 2, 
    status: 1
  },
  {
    sender_id: 1, 
    recipient_id: 3, 
    status: 0
  },
  {
    sender_id: 4, 
    recipient_id: 1, 
    status: 0
  },
  {
    sender_id: 5, 
    recipient_id: 1, 
    status: 0
  },
  {
    sender_id: 1, 
    recipient_id: 6, 
    status: 0
  },
  {
    sender_id: 7, 
    recipient_id: 1, 
    status: 1
  },
  {
    sender_id: 2, 
    recipient_id: 3, 
    status: 0
  },
  {
    sender_id: 2, 
    recipient_id: 10, 
    status: 0
  },
  {
    sender_id: 2, 
    recipient_id: 9, 
    status: 0
  },
  {
    sender_id: 6, 
    recipient_id: 2, 
    status: 1
  },
  {
    sender_id: 5, 
    recipient_id: 2, 
    status: 1
  },
  {
    sender_id: 3, 
    recipient_id: 6, 
    status: 1
  },
  {
    sender_id: 3, 
    recipient_id: 4, 
    status: 0
  },
  {
    sender_id: 5, 
    recipient_id: 3, 
    status: 1
  },
  {
    sender_id: 9, 
    recipient_id: 3, 
    status: 0
  },
])

Message.create!([
  # Converstation Between User 1 and User 2
  {
    connection_id: 1, 
    user_id: 1, 
    body: "God didn't make little green apples", 
    read: true
  },
  {
    connection_id: 1, 
    user_id: 2, 
    body: "And it don't rain in Indianapolis in the summertime", 
    read: true
  },
  {
    connection_id: 1, 
    user_id: 1, 
    body: "And if that's not lovin' me", 
    read: true
  },
  {
    connection_id: 1, 
    user_id: 2, 
    body: "I think about her face aglow and ease my mind", 
    read: true
  },
  {
    connection_id: 1, 
    user_id: 1, 
    body: "Puppy dogs, autumn leaves 'n' BB guns", 
    read: true
  },
  {
    connection_id: 1, 
    user_id: 1, 
    body: "God didn't make little green apples", 
    read: false
  },
  # / End Conversation with User 1 and User 2

  # Conversation with User 2 and User 6
  {
    connection_id: 10 , 
    user_id: 6, 
    body: "Baby it's gonna take a little bit longer for me to ever get you off of my mind", 
    read: true
  },
  {
    connection_id: 10 , 
    user_id: 2, 
    body: "Baby it's gonna take a little bit longer cause I've been lovin' you a long long time", 
    read: true
  },
  {
    connection_id: 10 , 
    user_id: 2, 
    body: "People try to tell me that it won't be long till I won't even miss you anymore", 
    read: true
  },
  {
    connection_id: 10 , 
    user_id: 2, 
    body: "But I can tell them it must be something mighty wrong every day I want you even more", 
    read: true
  },
  # / End Conversation with User 6 and User 2

  # Conversation with User 7 and User 1
  {
    connection_id: 6, 
    user_id: 7, 
    body: "Hello", 
    read: true
  },
  {
    connection_id: 6, 
    user_id: 1, 
    body: "Hi", 
    read: true
  },
  {
    connection_id: 6, 
    user_id: 7, 
    body: "Whatsup", 
    read: false
  },
  # / End Conversation with User 7 and User 1

  # Conversation with User 5 and User 2
  {
    connection_id: 11, 
    user_id: 5, 
    body: "Hello", 
    read: true
  },
  {
    connection_id: 11, 
    user_id: 2, 
    body: "Hi", 
    read: true
  },
  {
    connection_id: 11, 
    user_id: 5, 
    body: "Whatsup", 
    read: false
  },
  # / End Conversation with User 5 and User 2

  # Conversation with User 6 and User 3
  {
    connection_id: 12, 
    user_id: 3, 
    body: "Hello", 
    read: true
  },
  {
    connection_id: 12, 
    user_id: 6, 
    body: "Hi", 
    read: true
  },
  {
    connection_id: 12, 
    user_id: 6, 
    body: "Whatsup", 
    read: false
  },
  # / End Conversation with User 6 and User 3

  # Conversation with User 5 and User 3
  {
    connection_id: 14, 
    user_id: 5, 
    body: "Hello", 
    read: true
  },
  {
    connection_id: 14, 
    user_id: 5, 
    body: "Hi", 
    read: true
  },
  {
    connection_id: 14, 
    user_id: 5, 
    body: "Whatsup", 
    read: true
  },
  # / End Conversation with User 5 and User 3

 
])