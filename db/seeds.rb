require 'csv'
# csv_text = File.read(Rails.root.join('vendor', 'equipments.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   e = Equipment.new
#   e.category = row['category']
#   e.name = row['name']
#   e.save
# end

# puts "There are now #{Equipment.count} rows in the equipments table"



csv_text = File.read(Rails.root.join('vendor', 'countries.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  c = Country.new
  c.active = row['active']
  c.name = row['name']
  c.iso3 = row['iso3']
  c.iso2 = row['iso2']
  c.capital_name = row['capital_name']
  c.nationality = row['nationality']
  c.idd = row['idd']
  c.save
end

puts "There are now #{Country.count} rows in the countries table"

venues = Venue.create!([
		{name: "Skinners Hall", opening_time: "07:00", closing_time: "23:30", history: "Established in 1600 as a joint-stock association of English merchants trading to the ‘Indies’. During a period of rivalry the East India Company rented Skinners’ Hall from 1698 to 1709.  A ‘new’ East India Company, the United Company, was formed in 1709, and as a parting gift the Skinners’ Company was presented with the mahogany East India table which is still in use today in the Old Court Room.", website: "http://www.skinnershall.com" },
		{name: "Saddlers Hall", opening_time: "07:00", closing_time: "22:30", history: "With a series of elegant interconnecting rooms filled with warmth and natural light, Saddlers’ Hall is a perfect place for various celebrations. Amongst the remarkable features of the Great Hall is a charming musicians’ gallery, an exquisite silver display case and captivating portraits of Past Masters of the Company. The Hall is accessed by a private courtyard with magnificent stone statuary and a water fountain.", website: "http://www.saddlershall.com" },
		{name: "Apothecaries Hall", opening_time: "07:00", closing_time: "22:30", history: "The Society of Apothecaries was incorporated by royal charter from James I in 1617. The Letters Patent gave the Society the right to 'have, purchase, retain and appoint a certain Hall, or Counsel-House' in the City, but it was 15 years before it could afford one.", website: "http://www.apothecaries.org/" },
		{name: "Carpenters Hall", opening_time: "07:00", closing_time: "22:30", history: "The Carpenters’ Company has been based on London Wall since its first Hall was built there in 1429. Since that time, there have been three Halls. The current Hall was opened in 1960. From medieval times Carpenters' Hall has been used by groups and organisations to meet and entertain, including other guilds.", website: "http://www.thecarpenterscompany.co.uk/" }])

facilities = Facility.create!([
		{ name: 'WiFi'},
		{ name: 'Step Free Access'},
		{ name: 'Air Conditioned'},
		{ name: 'Toilets'},
		{ name: 'Cloackroom'},
		{ name: 'Terrace'},
		{ name: 'Heated Smoking Area'},
		{ name: 'Garden'},
		{ name: 'Free Parking'},
		{ name: 'Paid Parking'}])

clients = Client.create!([
		{name: "JP Morgan"},
		{name: "City of London"},
		{name: "Mr John Brown"}])

events = Event.create!([
		{name: "Mrs and Mr Smith", typ: "Wedding", description: "very sophisticated wedding", client_id: 1, venue_id: 1, status: "Confirmed", start_time: "12/12/2017 12:12:12"},
		{name: "JP Morgan", typ: "Reception", description: "Just a normal reception", client_id: 1, venue_id: 1, status: "Confirmed", start_time: "12/12/2017 12:12:12"}])

rooms = Room.create!([
		{name: "Great Hall", description: "Dating back to 1670 with its paintings, tapestries and Coat of Arms, the main hall can accommodate up to 170 guests for a presentation or dinner.", layouts: true, venue_id: 1},
		{name: "Outer Hall", description: "A unique double height central hall with magnificent open fire is a perfect location to greet guests and is licensed for wedding ceremonies for up to 60 guests.", layouts: false, venue_id: 1},
		{name: "Old Court Room", description: "A lovely intimate room suitable for receptions, smaller dinners or dancing.", layouts: true, venue_id: 1},
		{name: "Roof Garden", description: "A unique oasis for Summer entertaining hidden from the busy City.", layouts: false, venue_id: 1},
		{name: "Court Room", description: "A perfect formal setting for key business meetings or presentations.", layouts: false, venue_id: 1},
		{name: "Parlour", description: "An elegant additional room suitable for smaller meetings or ‘break out’ discussions.", layouts: false, venue_id: 1},
		{name: "Entrance Courtyard", description: "Enter a different world through the ceremonial gates from Dowgate Hill.", layouts: false, venue_id: 1},
		{name: "Library", description: "A small private drawing room for VIP receptions, or a bride and groom to find some privacy.", layouts: false, venue_id: 1},
		{name: "Great Hall", description: "Built in Classical style, the Hall is furnished with period furniture and paintings which provide an elegant backdrop for events of all types.
Blessed with huge stained glass windows, the room is filled with natural light. The Hall can accommodate a maximum of 150 diners using the Horseshoe with Sprig layout.", layouts: false, venue_id: 2},
		{name: "Court Room", description: "Combines with the Livery Room and Wardens Room to accommodate up to 200 guests. Separated, it is an ideal formal setting for key business meetings or presentation.", layouts: false, venue_id: 2},
		{name: "Livery Room", description: "With windows on 2 sides, an elegant flexible room suitable for receptions, presentations, meetings and seated meals. See the table below to view seating arrangements currently available.", layouts: false, venue_id: 2},
		{name: "Wardens Room", description: "For use as a breakout, reception or meeting space for 12.", layouts: false, venue_id: 2},
		{name: "Tunnel Room", description: "For use as a breakout or reception space.", layouts: false, venue_id: 2},
		{name: "Ante Room", description: "For use as a breakout or meeting space for 10.", layouts: false, venue_id: 2},
		{name: "Outside Courtyard:", description: "For use as a fair-weather reception space or for informal barbecue’s.", layouts: false, venue_id: 2},])

addresses = Address.create!([
		{line1: "40 Gutter Lane", line2: "", postcode: "EC2V 6BR", city: "London", state: "", country_id: "1", active: true, addressable_id: 2, addressable_type: "Venue"}])

staffs = Staff.create!([
		{name: "Marzena"},
		{name: "Molly"},
		{name: "Fabio"},
		{name: "Phil"},
		{name: "Jacqui"},
		{name: "Gerson"},
		{name: "Habib"}])

categories = Category.create!([
		{name: "Capitan", categorizable_id: 1, categorizable_type: "Staff"},
		{name: "A", categorizable_id: 2, categorizable_type: "Staff"},
		{name: "B", categorizable_id: 7, categorizable_type: "Staff"},
		{name: "B New", categorizable_id: 6, categorizable_type: "Staff"},
		{name: "Manager", categorizable_id: 3, categorizable_type: "Staff"},
		{name: "Porter", categorizable_id: 4, categorizable_type: "Staff"},
		{name: "Chef", categorizable_id: 5, categorizable_type: "Staff"},
		
		{name: "Crockery", categorizable_id: 1, categorizable_type: "Equipment"},
		{name: "Cutlery", categorizable_id: 2, categorizable_type: "Equipment"},
		{name: "Glasses", categorizable_id: 3, categorizable_type: "Equipment"},
		{name: "Buffet", categorizable_id: 4, categorizable_type: "Equipment"},
		{name: "Linen", categorizable_id: 5, categorizable_type: "Equipment"},
		{name: "Kitchen Equip", categorizable_id: 6, categorizable_type: "Equipment"},
		{name: "Coffee Equip", categorizable_id: 7, categorizable_type: "Equipment"},
		{name: "Cleaning Equip", categorizable_id: 8, categorizable_type: "Equipment"},
		{name: "Drinks Equip", categorizable_id: 9, categorizable_type: "Equipment"}])

