event1 = Event.create!(name: 'Mike Oldfield - Tubular Bells', date: DateTime.new(2021,7,31,18,30))
event2 = Event.create!(name: 'LOTR music - Live!', date: DateTime.new(2021,8,1,20,00,00))
event3 = Event.create!(name: 'Tokio Olympics', date: DateTime.new(2021,8,2,19,00,00))

100.times do
  event1.tickets.create!()
end

50.times do
  event2.tickets.create!()
end

200.times do
  event3.tickets.create!()
end
