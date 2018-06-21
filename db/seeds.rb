require 'csv'
Part.delete_all
csv_text = File.read(Rails.root.join('lib', 'seeds', 'parts.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Part.new
  t.part = row['part']
  t.description = row['description']
  t.shape = row['shape']
  t.color = row['color']
  t.coating = row['coating']
  t.mfg = row['mfg']
  t.save
  puts "#{t.part}, #{t.description} saved"
end




puts "There are now #{Part.count} rows in the items table"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
