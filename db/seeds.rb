venues = Venue.create!([
		{full_name: "Skinners Hall", opening_time: "07:00", closing_time: "23:30", history: "Established in 1600 as a joint-stock association of English merchants trading to the ‘Indies’. During a period of rivalry the East India Company rented Skinners’ Hall from 1698 to 1709.  A ‘new’ East India Company, the United Company, was formed in 1709, and as a parting gift the Skinners’ Company was presented with the mahogany East India table which is still in use today in the Old Court Room.", website: "http://www.skinnershall.com" },
		{full_name: "Saddlers Hall", opening_time: "07:00", closing_time: "23:30", history: "With a series of elegant interconnecting rooms filled with warmth and natural light, Saddlers’ Hall is a perfect place for various celebrations. Amongst the remarkable features of the Great Hall is a charming musicians’ gallery, an exquisite silver display case and captivating portraits of Past Masters of the Company. The Hall is accessed by a private courtyard with magnificent stone statuary and a water fountain.", website: "http://www.saddlershall.com" }])

facilities = Facility.create!([
		{ full_name: 'WiFi'},
		{ full_name: 'Step Free Access'},
		{ full_name: 'Air Conditioned'},
		{ full_name: 'Toilets'},
		{ full_name: 'Cloackroom'},
		{ full_name: 'Terrace'},
		{ full_name: 'Heated Smoking Area'},
		{ full_name: 'Garden'},
		{ full_name: 'Free Parking'},
		{ full_name: 'Paid Parking'}])

clients = Client.create!([
		{full_name: "Fabio Gubert"}])

events = Event.create!([
		{full_name: "Wedding", description: "Mrs and Mr Smith", client_id: 1, venue_id: 1}])

rooms = Room.create!([
		{full_name: "Great Hall", description: "Dating back to 1670 with its paintings, tapestries and Coat of Arms, the main hall can accommodate up to 170 guests for a presentation or dinner.", layouts: true, venue_id: 1},
		{full_name: "Outer Hall", description: "A unique double height central hall with magnificent open fire is a perfect location to greet guests and is licensed for wedding ceremonies for up to 60 guests.", layouts: false, venue_id: 1},
		{full_name: "Old Court Room", description: "A lovely intimate room suitable for receptions, smaller dinners or dancing.", layouts: true, venue_id: 1},
		{full_name: "Roof Garden", description: "A unique oasis for Summer entertaining hidden from the busy City.", layouts: false, venue_id: 1},
		{full_name: "Court Room", description: "A perfect formal setting for key business meetings or presentations.", layouts: false, venue_id: 1},
		{full_name: "Parlour Room", description: "An elegant additional room suitable for smaller meetings or ‘break out’ discussions.", layouts: false, venue_id: 1},
		{full_name: "Entrance Courtyard", description: "Enter a different world through the ceremonial gates from Dowgate Hill.", layouts: false, venue_id: 1},
		{full_name: "Library", description: "A small private drawing room for VIP receptions, or a bride and groom to find some privacy.", layouts: false, venue_id: 1}])