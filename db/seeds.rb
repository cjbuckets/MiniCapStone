User.create!([
  {email: "djcjbuckets@yahoo.com", encrypted_password: "$2a$11$Ilt7PJSNZVaemVD8NHXCy.Bo8pW1DpGBWZCaCaUQ/26Oi1WUXaioS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 23, current_sign_in_at: "2016-05-24 20:10:26", last_sign_in_at: "2016-05-24 19:21:56", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Item.create!([
  {product: "Muscle Car", description: "chick magnet, super fast, solar powered", price: "830000.0", supplier_id: 4, user_id: 1},
  {product: "Magical Water", description: "cure diseases, unlimited supply, blah blah blah", price: "999000.0", supplier_id: 3, user_id: 1},
  {product: "Dog That Speaks English", description: "8 month old blue nose pitbull, professional K-9 unit, speaks english, performs Michael Jackson moonwalk", price: "20000.0", supplier_id: 2, user_id: 1},
  {product: "Luxury Downtown Condo", description: "3 bed, 3bath, 112th floor", price: "900000.0", supplier_id: 2, user_id: 1},
  {product: "Platinum Recording Music Artist", description: "Play over 20 instruments, lead singer of rock band, humanitarian", price: "750000.0", supplier_id: 2, user_id: 1}
])
Order.create!([
  {user_id: 1, product_id: nil, quantity: nil, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: nil, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: nil, quantity: nil, subtotal: nil, tax: nil, total: nil}
])
Supplier.create!([
  {name: "Tboz", email: "tboz@tlc.com", phone: "312-222-2222"},
  {name: "LeftEye", email: "lefteye@tlc.com", phone: "312-333-3333"},
  {name: "Chilli", email: "chilli@tlc.com", phone: "312-444-4444"},
  {name: "Kendricks Lab", email: "kendrick@kendrick.com", phone: "312-555-5555"},
  {name: "Schoolboys Dungeon", email: "schoolboy@schoolboy.com", phone: "773-555-5555"}
])
