
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

venues = Venue.create!([
		{name: "Skinners Hall", opening_time: "07:00", closing_time: "23:30", history: "Established in 1600 as a joint-stock association of English merchants trading to the ‘Indies’. During a period of rivalry the East India Company rented Skinners’ Hall from 1698 to 1709.  A ‘new’ East India Company, the United Company, was formed in 1709, and as a parting gift the Skinners’ Company was presented with the mahogany East India table which is still in use today in the Old Court Room.", website: "http://www.skinnershall.com" }])

clients = Client.create!([
		{name: "Fabio Gubert"}])

events = Event.create!([
		{name: "Wedding", description: "Mrs and Mr Smith", client_id: 1}])

rooms = Room.create!([
		{name: "Great Hall", description: "Dating back to 1670 with its paintings, tapestries and Coat of Arms, the main hall can accommodate up to 170 guests for a presentation or dinner.", venue_id: 1},
		{name: "Outer Hall", description: "A unique double height central hall with magnificent open fire is a perfect location to greet guests and is licensed for wedding ceremonies for up to 60 guests.", venue_id: 1},
		{name: "Old Court Room", description: "A lovely intimate room suitable for receptions, smaller dinners or dancing.", venue_id: 1}])