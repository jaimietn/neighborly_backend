# Create User Instance:
# User.create(username: "Bobby", password: "password", avatar: "https://pbs.twimg.com/profile_images/595596215275884544/DvU0Um55_400x400.png", bio: "I'm a kid")

# Create Post Instance:
# Post.create(user_id: 3, latitude: 40.691988, longitude: -74.016679, posted: Date.parse('2019-08-29'), expires: Date.parse('2019-9-05'), category: "Need Help", title: "Stranded on an island", content: "I went for a swim and got tired and now I'm trapped on this island! Can someone please come pick me up??", image: "https://images.app.goo.gl/5VbMT6BAgUjsRd567")

#remove instance: User.find(1).delete

# update instance attributes: User.where(:id => 2).first.update_attributes(:username => 'Kevin')
# update instance attributes: Post.where(:id => ).first.update_attributes(:category => '')

# Post Categories:
# Animal Sightings
# Candid Camera
# Free Stuff
# General Notes
# Items For Sale
# Live Music
# Lost or Found Items
# Lost or Found Pets
# Missed Connections
# Need Help
# Neighborhood Events
# Other
# Protest Events
# Safety Concerns
# Thank You Notes
