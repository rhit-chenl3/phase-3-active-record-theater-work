Audition.destroy_all
Role.destroy_all

puts "creating roles"
role1 = Role.create(character_name: "Capt America")
role2 = Role.create(character_name: "Batman")


puts "creating auditions"
audition1 = Audition.create(actor: "Chris Evans", location: "Marvel HQ", phone: "8122230815", hired: false, role_id: role1.id)
audition2 = Audition.create(actor: "Chris Tucker", location: "Jurassic HQ", phone: "6852230815", hired: false, role_id: role1.id)
audition3 = Audition.create(actor: "Josh Krsek", location: "NYC", phone: "8122326415", hired: false, role_id: role1.id)
audition4 = Audition.create(actor: "Leo Chen", location: "NYC", phone: "8122230816", hired: false, role_id: role2.id)
audition5 = Audition.create(actor: "Young", location: "San Fran", phone: "7854156789", hired: false, role_id: role2.id)

puts "seeding done"

# testing method

# cap = Role.find_by_character_name("Capt America")
# aud1 = Audition.find_by_actor("Chris Evans")
# aud2 = Audition.find_by_actor("Josh Krsek")
# aud1.call_back
# aud2.call_back
# cap.lead
# cap.understudy