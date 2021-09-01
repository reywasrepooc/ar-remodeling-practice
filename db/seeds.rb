puts "Creating houses..."
House.create(year_built: 1970, address: "30 Main St", state: "PA", solar: true)
House.create(year_built: 2001, address: "500 Cedar Ave", state: "TX", solar: true)
House.create(year_built: 1995, address: "123 Chestnut St", state: "PA", solar: false)

puts "Creating owners..."
Owner.create(name: "Rick")
Owner.create(name: "Morty")
Owner.create(name: "Mr. Meseeks")
Owner.create(name: "Gazorpazop")

puts "Creating projects..."

# ***************************************************************
# * TODO: create projects! Remember, a project belongs to a house *
# * and a project belongs to an owner.                            *
# ***************************************************************
# Create projects Here
Project.create(price: 3_300, owner_id: 1, house_id: 2)
Project.create(price: 32_110, owner_id: 2, house_id: 1)
Project.create(price: 43_300, owner_id: 3, house_id: 3)
Project.create(price: 123_400, owner_id: 4, house_id: 1)

puts "Seeding done!"
