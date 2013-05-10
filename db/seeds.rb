require 'faker'

10.times do |each|
  Task.create(:completed => false, :todo => Faker::Lorem.characters(char_count = 25), :completed_at => nil )
end
