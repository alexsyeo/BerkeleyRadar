$waterFountainMarkers = [
  { lat: 37.870557, lng: -122.260546, content: 'Dwinelle Hall', title: 'Dwinelle Hall' },
  { lat: 37.871109, lng: -122.259293, content: 'Wheeler Hall', title: 'Wheeler Hall' },
  { lat: 37.875653, lng: -122.258522, content:'Piece of crap', title:'Soda Hall' },
  { lat: 37.869148, lng: -122.259536, content:'ASUC Student Union, Second Floor', title:'ASUC Student Union, Second Floor' },
  { lat: 37.871278, lng: -122.254668, content:'Minor Hall', title:'Minor Hall' },
  { lat: 37.870110, lng: -122.257778, content:'Barrows Hall', title:'Barrows Hall' }
];

$bathroomMarkers = [
  { lat: 37.868707, lng: -122.262575, content:'RSF Locker Rooms', title:'RSF Locker Rooms'},
  { lat: 37.871109, lng: -122.259293, content:'Wheeler Hall', title:'Wheeler Hall' },
  { lat: 37.875653, lng: -122.258522, content:'Soda Hall', title:'Soda Hall' },
  { lat: 37.869148, lng: -122.259536, content:'ASUC Student Union, Second Floor', title:'ASUC Student Union, Second Floor' },
  { lat: 37.872091, lng: -122.259011, content:'Doe Memorial Library', title:'Doe Memorial Library' },
  { lat: 37.871074, lng: -122.255669, content:'Hertz Hall', title:'Hertz Hall' }
];

#Fountains
def make_fountains
	count = 0
  $waterFountainMarkers.each do |w|
    waterFountain = Fountain.create(
      coord_lat: w[:lat],
      coord_lng: w[:lng],
      content: w[:content],
      title: w[:title],
    )
    waterFountain.save
    count += 1
    printf("#{count}/#{$waterFountainMarkers.length} Fountains \r")
  end
  puts "\n"
end

#Bathrooms
def make_bathrooms
	count = 0
  $bathroomMarkers.each do |b|
    bathroom = Bathroom.create(
      coord_lat: b[:lat],
      coord_lng: b[:lng],
      content: b[:content],
      title: b[:title],
    )
    bathroom.save
    count += 1
    printf("#{count}/#{$bathroomMarkers.length} Bathrooms \r")
  end
  puts "\n"
end

make_fountains
make_bathrooms
puts "Seeding Finished!"


