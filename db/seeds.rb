User.destroy_all
Post.destroy_all
Message.destroy_all

##### USERS #####
# User 1
User.create(username: "Jaimie", password: "jaimie", avatar: "https://pbs.twimg.com/profile_images/2160484303/Screen_Shot_2012-04-23_at_7.00.38_PM_400x400.png", bio: "I love pugs")
# User 2
User.create(username: "Christine", password: "christine", avatar: "http://www.publicartinla.com/neon_signs/helms_neon.jpeg", bio: "Pug mama")
# User 3
User.create(username: "Bert", password: "bert", avatar: "https://scontent-sea1-1.cdninstagram.com/vp/71734a182b599862784d5a0f5bb0e874/5DCEC16A/t51.2885-19/s150x150/27891577_1026701230822767_252756652116148224_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com", bio: "Pug brother")
# User 4
User.create(username: "Sully", password: "sully", avatar: "https://scontent-sea1-1.cdninstagram.com/vp/71734a182b599862784d5a0f5bb0e874/5DCEC16A/t51.2885-19/s150x150/27891577_1026701230822767_252756652116148224_n.jpg?_nc_ht=scontent-sea1-1.cdninstagram.com", bio: "Pug brother")
# User 5
User.create(username: "Bobby", password: "bobby", avatar: "https://pbs.twimg.com/profile_images/595596215275884544/DvU0Um55_400x400.png", bio: "I'm a kid")
# User 6
User.create(username: "Alex", password: "alex", avatar: "https://i.pinimg.com/280x280_RS/51/56/02/5156020506932d8819047a114df4c457.jpg", bio: "Goldendoodle mommy")
# User 7
User.create(username: "Gaby", password: "gaby", avatar: "https://di2ponv0v5otw.cloudfront.net/users/2018/08/05/5b5e77dc42aa761e6f37d956/m_5b67d4e57ee9e208095e81ba.jpg", bio: "Punk kid")
# User 8
User.create(username: "Lily", password: "lily", avatar: "http://ap.rdcpix.com/1896845863/147bddc836a14055465c400c4e7c6a91a-c0l.jpg", bio: "")

## User create ##
# User.create(username: "", password: "", avatar: "", bio: "")
# User.create(username: "", password: "", avatar: "", bio: "")

puts "Made some users!"

##### POSTS #####
# Post 1
Post.create(user_id: 5, username: "Bobby", latitude: 40.691988, longitude: -74.016679, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "Need Help", title: "Stranded on an Island", content: "I went for a swim and got tired and now I'm trapped on this island! Can someone please come pick me up??", image: "https://images.app.goo.gl/5VbMT6BAgUjsRd567", neighborhood: "The Hudson")
# Post 2
Post.create(user_id: 1, username: "Jaimie", latitude: 40.715133, longitude: -74.007872, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "Spotted", title: "OMG I just saw Beyoncé!", content: "THIS IS THE BEST DAY OF MY LIFE!", image: "http://celebedition.com/wp-content/uploads/2015/09/2C0FCC9700000578-0-image-a-97_14416820729791.jpg", neighborhood: "Tribeca")
# Post 3
Post.create(user_id: 3, username: "Bert", latitude: 40.704415, longitude: -73.989945, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "Animal Sightings", title: "Rare Bird", content: "I just saw this bird flying near the East River in DUMBO and think it must be rare. Anyone know what species it is?", image: "https://www.nationalgeographic.com/content/dam/news/photos/000/326/32635.ngsversion.1422035438209.adapt.1900.1.jpg", neighborhood: "DUMBO")
# Post 4
Post.create(user_id: 4, username: "Sully", latitude: 36.1888578, longitude: -115.328131, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "Free Stuff", title: "Free Goldendoodle", content: "My cousin has this dog and he's super annoying. Someone please take him. Come by anytime Monday-Friday 10am-5pm, no questions asked. Just take him please.", image: "https://poodles2doodles.com/wp-content/uploads/2018/11/D828BFAB-F766-46B5-8E94-1C4D5FB9C3A4.jpeg", neighborhood: "Summerlin")
# Post 5
Post.create(user_id: 3, username: "Bert", latitude: 40.717627, longitude: -74.003662, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "Free Stuff", title: "Free Goldendoodle", content: "My cousin has this dog and he's super annoying. Someone please take him. Come by anytime Monday-Friday 10am-5pm while my cousin is at work, no questions asked. Just take him please.", image: "https://poodles2doodles.com/wp-content/uploads/2018/11/D828BFAB-F766-46B5-8E94-1C4D5FB9C3A4.jpeg", neighborhood: "SoHo")
# Post 6
Post.create(user_id: 1, username: "Jaimie", latitude: 40.668720, longitude: -73.986153, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "For Sale", title: "$100 Flatscreen TV", content: "Basically brand new, we just measured incorrectly and it doesn't fit. Info: 55 LG 55LM640T Full HD 1080p Freeview HD Smart 3D LED TV", image: "http://doublepee.com/wp-content/uploads/2018/01/10.jpg", neighborhood: "Park Slope")

## Post create ##
# Post.create(user_id: , username: "", latitude: 40.704415, longitude: -73.989945, posted: Date.parse('2019-09-06'), expires: Date.parse('2019-09-13'), category: "", title: "", content: "", image: "", neighborhood: "")

puts "Made some posts!"

##### MESSAGES #####
# Message 1
Message.create(title: "Where did you see her?", content: "I'm in Tribeca right now and want to see if I can spot her too!", sent: Date.parse('2019-09-06'), post_id: 2, sender_id: 6, recipient_id: 1)
# Message 2
Message.create(title: "Super Rare Bird", content: "OMG that's an Asian Crested Ibis and it's actually EXTREMELY rare! The last known wild one died in Japan in 2003.", sent: Date.parse('2019-09-06'), post_id: 3, sender_id: 8, recipient_id: 3)
# Message 3
Message.create(title: "Goldendoodle", content: "I'll take him!! Just let me know your address.", sent: Date.parse('2019-09-06'), post_id: 5, sender_id: 1, recipient_id: 3)

## Message create ##
# Message.create(title: "", content: "", sent: Date.parse('2019-09-06'), post_id: , sender_id: , recipient_id: )

puts "Made some messages!"

#remove instance: User.find(1).delete
# update instance attributes: User.where(:id => 2).first.update_attributes(:username => 'Kevin')
# update instance attributes: Post.where(:id => ).first.update_attributes(:category => '')
