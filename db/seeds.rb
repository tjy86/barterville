User.delete_all
Product.delete_all

names = ["Sophia","Emma","Isabella","Olivia","Ava","Lily","Chloe","Madison","Emily","Abigail","Aiden","Jackson","Mason","Liam","Jacob","Jayden","Ethan","Noah","Lucas","Logan"]
products = ["Roman Antiques","Barn Doors","Art Sculptures and Carvings","Tooth Fairy Pillows","Solar Power","Props and Stage Equipment","Vintage Accessories","Vintage Clothes Hangers","Vintage Ties","Mens Costumes","Baby Christening Gowns & Suits","Coach","Gold Bullion Bars","Lawyer and Legal Collectibles","Vintage Disney Theme Park Souvenirs","Magic Lantern Glass Slides","Beer Hats","Skunks","St. Patrick's Day","Traction & Trolleys","Turntables","Latch Hooking Kits","Documentary DVD's","Miniature Dollhouse Food and Groceries","Television Wardrobe Originals","Department Store Coupons","Tattoo Removal Machines","Crystal Chandeliers","Bolo Ties","Latin Music"]

names.each do |name|
	User.create(:name => name, :password => "1", :password_confirmation => "1", :remote_photo_url => "http://lorempixel.com/150/150/people")
end

100.times do
	p = products.sample
	u = User.all.sample
	u.products << Product.create(:name => p, :description => "this is a nice #{p}")
end
