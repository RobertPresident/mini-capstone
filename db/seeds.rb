Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/en/a/ac/Big_L.jpg", string: nil},
  {url: "http://assets.rollingstone.com/assets/2014/gallery/nas-my-life-in-20-songs-20140415/28107/_original/1035x923-nas-1800-1397494868.jpg", string: nil},
  {url: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Jay-Z_@_Shawn_'Jay-Z'_Carter_Foundation_Carnival_(crop_2).jpg", string: nil},
  {url: "http://a1.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE5NTU2MzE1OTkzOTAwNTU1.jpg", string: nil},
  {url: "http://cdn.hiphopwired.com/wp-content/uploads/2011/08/biggie.jpg", string: nil}
])
Product.create!([
  {name: "Ready To Die", price: 13, image: "https://images.rapgenius.com/6f5d63df3fb5c91b562d79ce857adaaa.446x456x1.jpg", description: "Classic", stock: "In", supplier_id: 1},
  {name: "Reasonable Doubt", price: 15, image: "https://upload.wikimedia.org/wikipedia/en/f/f5/Reasonable_Doubt_New.jpg", description: "Fire", stock: "Out", supplier_id: 1},
  {name: "Illmatic", price: 12, image: "https://images.rapgenius.com/aa578a39d04099b869825ad2f31ba1f0.994x1000x1.jpg", description: "Heat", stock: "In", supplier_id: 1},
  {name: "Lifestylez Ov Da Poor and Dangerous", price: 9, image: "https://danjlovesthe90s.files.wordpress.com/2010/05/big-l-poor-dangerous.jpg", description: "Underrated", stock: "In", supplier_id: 1},
  {name: "Me Against The World", price: 10, image: "https://upload.wikimedia.org/wikipedia/en/3/3d/Meagainsttheworldcover.jpg", description: "Dope", stock: "Out", supplier_id: 1}
])
Supplier.create!([
  {name: "Yo Mama Music", email: "soulglo@yahoo.com", phone: "(310)555-1234"}
])
