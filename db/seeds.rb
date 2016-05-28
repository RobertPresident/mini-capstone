User.create!([
  {email: "mike@gmail.com", encrypted_password: "$2a$11$FUEMjIrBStCkEF/D5y50BOAE5J2.TBw3HSzRccR3okaFo7CBv89fm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2016-05-23 23:20:25", last_sign_in_at: "2016-05-23 23:00:06", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
CategorizedProduct.create!([
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 3},
  {product_id: 5, category_id: 4},
  {product_id: 6, category_id: 5}
])
Category.create!([
  {name: "music"},
  {name: "genre"},
  {name: "explict"},
  {name: "non_explict"}
])
Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/en/a/ac/Big_L.jpg", product_id: 1},
  {url: "http://assets.rollingstone.com/assets/2014/gallery/nas-my-life-in-20-songs-20140415/28107/_original/1035x923-nas-1800-1397494868.jpg", product_id: 29},
  {url: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Jay-Z_@_Shawn_'Jay-Z'_Carter_Foundation_Carnival_(crop_2).jpg", product_id: 30},
  {url: "http://a1.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE5NTU2MzE1OTkzOTAwNTU1.jpg", product_id: 3},
  {url: "http://cdn.hiphopwired.com/wp-content/uploads/2011/08/biggie.jpg", product_id: 2}
])
Order.create!([
  {user_id: 1, product_id: 1, quantity: 7, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 7, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 1, subtotal: 13.0, tax: 1.17, total: 14.17},
  {user_id: 1, product_id: 30, quantity: 2, subtotal: 24.0, tax: 2.16, total: 26.16},
  {user_id: 1, product_id: 29, quantity: 3, subtotal: 45.0, tax: 4.05, total: 49.05}
])
Product.create!([
  {price: 13, description: "Classic", stock: "In", supplier_id: 1, user_id: 1, name: "temp_name", categories: nil, categorized_products: nil, category: nil},
  {price: 15, description: "Fire", stock: "Out", supplier_id: 1, user_id: 1, name: "temp_name", categories: nil, categorized_products: nil, category: nil},
  {price: 12, description: "Heat", stock: "In", supplier_id: 1, user_id: 1, name: "temp_name", categories: nil, categorized_products: nil, category: nil},
  {price: 9, description: "Underrated", stock: "In", supplier_id: 1, user_id: 1, name: "temp_name", categories: nil, categorized_products: nil, category: nil},
  {price: 10, description: "Dope", stock: "Out", supplier_id: 1, user_id: 1, name: "temp_name", categories: nil, categorized_products: nil, category: nil}
])
Supplier.create!([
  {name: "Yo Mama Music", email: "soulglo@yahoo.com", phone: "(310)555-1234"}
])
