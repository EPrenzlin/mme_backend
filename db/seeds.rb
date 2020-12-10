# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'mme.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

esma_text = File.read(Rails.root.join('lib', 'seeds', 'esma.csv'))
esma_csv = CSV.parse(esma_text, :headers => true, :encoding => 'ISO-8859-1')



csv.each do |mme| 
    t = Exemption.new 
    t.name = mme['Name']
    t.isin = mme['ISIN']
    t.stock_market = mme['Stock Market']
    puts "#{t}"
    t.save   
end 


esma_csv.each do |name| 
    new_name = Esma.new 
    new_name.isin = name['ISIN']
    new_name.regulator = name['Regulator']
    new_name.name = name['Name']
    puts "#{new_name}"
    new_name.save 
end

