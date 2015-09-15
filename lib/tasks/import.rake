namespace :import do
	
	desc 'import countries from csv'
	task countries: :environment do
		CSV.foreach('vendor/countries.csv') do |row|
			p row
			enabled, name, iso3, iso2, capital_name, nationality, idd = row
			Country.create!(enabled: enabled, name: name, iso3: iso3, iso2: iso2, capital_name: capital_name, nationality: nationality, idd: idd)
		end
	end
end