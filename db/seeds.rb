# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

how_many = ARGV[1].to_i
remove_all = ARGV[2]

if remove_all == "yes"
  Course.delete.all
end

puts "Creates #{how_many} courses"

how_many.times {
  Course.create :name => "course"
}
