User.delete_all
Product.delete_all

names = ['Faith', 'Makayla', 'Ella', 'Amanda', 'Brooke', 'Stephanie', 'Mackenzie', 'Allison', 'Maria', 'Nicole', 'Savannah', 'Haley', 'Alexandra', 'Katherine', 'Mia', 'Kaitlyn', 'Jennifer', 'Ava', 'Destiny', 'Julia', 'Morgan', 'Rachel', 'Megan', 'Hailey', 'Jasmine', 'Sydney', 'Chloe', 'Victoria', 'Natalie', 'Anna', 'Sophia', 'Kayla', 'Brianna', 'Jessica', 'Taylor', 'Lauren', 'Grace', 'Alyssa', 'Isabella', 'Elizabeth', 'Sarah', 'Alexis', 'Samantha', 'Ashley', 'Olivia', 'Abigail', 'Hannah', 'Emma', 'Madison', 'Emily', 'Isaac', 'Aaron', 'Evan', 'Connor', 'Kyle', 'Angel', 'Luke', 'Isaiah', 'Jason', 'Jack', 'Hunter', 'Cameron', 'Elijah', 'Jordan', 'Thomas', 'Caleb', 'Robert', 'Gabriel', 'Kevin', 'Jose', 'Austin', 'Logan', 'Noah', 'Justin', 'Nathan', 'Benjamin', 'Samuel', 'Christian', 'Dylan', 'Jonathan', 'Zachary', 'Brandon', 'James', 'John', 'Alexander', 'Tyler', 'Ryan', 'David', 'Anthony', 'William', 'Nicholas', 'Ethan', 'Joseph', 'Daniel', 'Christopher', 'Andrew', 'Matthew', 'Joshua', 'Michael', 'Jacob']
products = ['Swiss Army Knife', 'Nalgene Bottle', 'ChuckIt', 'Camelbak', 'California Stir Fry', 'Broccolini', 'Shredded Wheat', 'Altoids', 'Zamboni', 'Netbook', 'Walkman', 'Vespa', 'Krazy Glue', 'Xerox', 'Tylenol', 'Tums', 'Swiffer', 'Roto-Rooter', 'Polaroid', 'Pepto Bismol', 'Mack Truck', 'Levis', 'JumboTron', 'Zipcar', 'Head & Shoulders', 'Groupon', 'Coke', 'Britta', 'Brillo Pad', 'Bisquick', 'Bengay', 'FedEx', 'Excel', 'Jeep', 'Muzak', 'Word', 'Matchbox Cars', 'Jacuzzi', 'Memory Stick', 'Dust Buster', 'Advil', 'Jet Ski', 'Google', 'Armor-All', 'Skype', 'Cigarette Boat', 'Dramamine', 'Onesies', 'Zip-loc', 'Lysol', 'Sharpie', 'Formica', 'Cuisinart', 'Winnebago', 'Photoshop', 'Powerpoint', 'Dry Ice', 'Stetson', 'Speedo', 'Tabasco', 'U-haul', 'Taser', 'Tarmac', 'Realtor', 'Nyquil', 'Drano', 'Wite-Out', 'Chapstick', 'Hacky Sack', 'Murphy Bed', 'Rollerblade', 'Ace Bandage', 'Crock-Pot', 'AstroTurf', 'Post-It Note', 'Tupperware', 'Trampoline', 'Super Heroes', 'Styrofoam', 'Dumpster', 'Aspirin', 'Kerosene', 'Cellophane', 'Bubble Wrap', 'Velcro', 'Kool-Aid', 'Plexiglas', 'Saran Wrap', 'Q-Tips', 'Heroin', 'Windex', 'Ping Pong', 'Vaseline', 'Scotch-Tape', 'Kleenex', 'Thermos', 'Popsicle', 'Videotape', 'Butterscotch', 'Escalator', 'Frisbee', 'Yo-Yo', 'Jell-O', 'Band-aid']

names.each do |name|
	User.create(:name => name, :password => "1", :password_confirmation => "1", :remote_photo_url => "http://lorempixel.com/150/150/people", :email => "#{name}@example.com")
end

p_images = ["http://lorempixel.com/150/150/transport/","http://lorempixel.com/150/150/animals/","http://lorempixel.com/150/150/technics/"]

100.times do
	p = products.sample
	u = User.all.sample
	u.products << Product.create(:name => p, :description => "this is a nice #{p}", :remote_photo_url => p_images.sample)
end
