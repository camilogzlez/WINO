# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

WineExperience.destroy_all
Booking.destroy_all
User.destroy_all

puts "Creando tres owners"
natalia = User.create!(email: "gattinati.ng@gmail.com", password: "gattinati", owner: false)
facundo = User.create!(email: "facundolanus@gmail.com", password: "facundolanus", owner: true)
camilo = User.create!(email: "camilogzlez@gmail.com", password: "camilogzlez", owner: false)

puts "Creando Wine Experiences"

 rutini = WineExperience.create!(
  title: "Bodega Rutini malbec tasting", 
  description: "pruebe los vinos de la bodega ....", 
  date: Date.new(2021, 2, 14, 18), 
  price: 1500, 
  owner: natalia, 
  address: Faker::Address.street_address
)

garufa = WineExperience.create!(title: "Garufa Wines", description: "Algo distinto, algo especial, algo que este presente en tus momentos de éxito, por eso te hacemos llegar esta cata de gran nivel.", date: Date.new(2021, 3, 25, 18), price: 4800, owner: natalia, address: Faker::Address.street_address)

garufa_photos_info = [{
  url: "https://3.bp.blogspot.com/-AUfg1EyMKLw/UNKD7GBosVI/AAAAAAAAlPA/si9w4MhRQiE/s1600/GARUFA-potw+(2).jpg",
  filename: "garufa_1.jpeg"
  },
  {
  url: "https://pbs.twimg.com/profile_images/474313157725286400/ZmycegYJ_400x400.jpeg",
  filename: "garufa_2.jpeg"
  },
  {
  url: "https://d26lpennugtm8s.cloudfront.net/stores/001/100/500/products/obrera1-4131d3ddd9cc2683c715850875080795-480-0.jpeg",
  filename: "garufa_3.jpeg"
  }
]

garufa_photos_info.each do |photo_info|
  garufa.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
garufa.save!

rutini_photos_info = [{
  url: "https://www.espaciovino.com.ar/media/default/0001/62/thumb_61963_default_big.jpeg",
  filename: "rutini_1.jpeg"
  },
  {
  url:  "https://d26lpennugtm8s.cloudfront.net/stores/850/274/products/666e9c6e-a170-476e-98b9-537a1bc149891-f9e8c34cefe17da29615877614827308-1024-1024.jpeg",
  filename: "rutini_2.jpeg"
  }
]

rutini_photos_info.each do |photo_info|
  rutini.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
rutini.save!


rubino = WineExperience.create!(title: "Bodega Familia Rubino", description: "Promoción San Valentin Vinos", date: Date.new(2021, 2, 14, 18), price: 4620, owner: camilo, address: Faker::Address.street_address)

rubino_photos_info = [{
  url: "https://www.pasionporelvino.com/pub/media/catalog/product/cache/image/265x265/beff4985b56e3afdbeabfc89641a4582/o/4/o4uf6owtqnazammy25wmfw_pl_375x500.png",
  filename: "rubino_1.jpeg"
  },
  {
  url: "https://www.espaciovino.com.ar/media/default/0001/53/thumb_52954_default_big.jpeg",
  filename: "rubino_2.jpeg"
  },
  {
  url: "https://http2.mlstatic.com/D_NQ_NP_797555-MLA43472431339_092020-V.jpg",
  filename: "rubino_3.jpeg"
  }
]

rubino_photos_info.each do |photo_info|
  rubino.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
rubino.save!

francia = WineExperience.create!(title: "Vinos del Sur de Francia", description: "Realize un viaje a traves de los vinos ....", date: Date.new(2021, 3, 4, 19), price: 5000, owner: facundo, address: Faker::Address.street_address)

francia_photos_info = [{
  url: "https://www.altonivel.com.mx/assets/images/templates/notas/anteriores/0000231045.jpg",
  filename: "francia_1.jpeg"
  },
  {
  url:  "https://i.pinimg.com/originals/87/bb/bd/87bbbd97a117f33f9f71a193469523b9.jpg",
  filename: "francia_2.jpeg"
  }
]

francia_photos_info.each do |photo_info|
  francia.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
francia.save!

lopez = WineExperience.create!(title: "Bodegas López", description: "Vinos de cosechas únicas, ideales para generar ocasiones inolvidables.", date: Date.new(2021, 4, 17, 20), price: 7500, owner: natalia, address: Faker::Address.street_address)

lopez_photos_info = [{
  url: "http://sentiargentina.com/wp-content/uploads/2016/11/14910441_592182464323853_4166187103473886763_n.jpg",
  filename: "lopez_1.jpeg"
  },
  {
  url: "https://bodegaslopez.com.ar/wp-content/uploads/2019/06/lmalb-1.jpg",
  filename: "lopez_2.jpeg"
  },
  {
  url: "https://bodegaslopez.com.ar/wp-content/uploads/2020/03/mgr10.jpg",
  filename: "lopez_3.jpeg"
  }
]

lopez_photos_info.each do |photo_info|
  lopez.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
lopez.save!

cafayate = WineExperience.create!(title: "Vinos del Cafayate ", description: "Deleitese con vinos de talla mundial ....", date: Date.new(2021, 2, 20, 17), price: 1800, owner: camilo, address: Faker::Address.street_address)

cafayate_photos_info = [{
  url: "http://www.saltargentina.com.ar/wp-content/uploads/2019/04/artistica-varietal.jpg",
  filename: "cafayate_1.jpeg"
  },
  {
  url:  "https://http2.mlstatic.com/vino-cafayate-gran-linaje-malbec-750ml-etchart-botella-salta-D_Q_NP_967916-MLA41364962156_042020-F.webp",
  filename: "cafayate_2.jpeg"
  },
  {
  url: "https://www.espaciovino.com.ar/media/default/0001/55/thumb_54262_default_medium.jpeg",
  filename: "cafayate_3.jpeg"
  },
  {
  url: "https://http2.mlstatic.com/vino-cafayate-rose-rosado-750ml-etchart-salta-bebida-botella-D_Q_NP_940619-MLA41430889026_042020-F.webp",
  filename: "cafayate_4.jpeg"
  }
]

cafayate_photos_info.each do |photo_info|
  cafayate.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
cafayate.save!

fin_del_mundo = WineExperience.create!(title: "Bodega Fin del Mundo", description: "Descubrí nuestros vinos: La inmensidad de la Patagonia en todos nuestros vinos.", date: Date.new(2021, 4, 20, 19), price: 5020, owner: camilo, address: Faker::Address.street_address)

fin_del_mundo_photos_info = [{
  url: "https://vinocular.files.wordpress.com/2016/02/vino-ventus-tinto-bod-del-fin-del-mundo-5593-mla4466815007_062013-o.jpg?w=541&h=329",
  filename: "fin_del_mundo_1.jpeg"
  },
  {
  url: "https://http2.mlstatic.com/vino-fin-del-mundo-special-blend-750ml-envios-D_Q_NP_784175-MLA42301807436_062020-F.webp",
  filename: "fin_del_mundo_2.jpeg"
  },
  {
  url: "https://www.espaciovino.com.ar/media/default/0001/55/thumb_54341_default_big.jpeg",
  filename: "fin_del_mundo_3.jpeg"
  }
]

fin_del_mundo_photos_info.each do |photo_info|
  fin_del_mundo.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
fin_del_mundo.save!

mosquita_muerta = WineExperience.create!(title: "Bodega Mosquita Muerta", description: "Blends Premium.", date: Date.new(2021, 2, 27, 19), price: 3700, owner: facundo, address: Faker::Address.street_address)

mosquita_muerta_photos_info = [{
  url: "https://http2.mlstatic.com/D_NQ_NP_838898-MLA31065849993_062019-O.jpg",
  filename: "mosquita_muerta_1.jpeg"
  },
  {
  url: "https://http2.mlstatic.com/vino-mosquita-muerta-blend-de-tintas-750ml-envios-D_Q_NP_645659-MLA40355369406_012020-F.webp",
  filename: "mosquita_muerta_2.jpeg"
  },
  {
  url: "https://d26lpennugtm8s.cloudfront.net/stores/001/390/316/products/diseno-sin-titulo-41-b6da5b3c2759b4e32215837939621643-640-01-0601da316e37a035e916034703228737-640-0.png",
  filename: "mosquita_muerta_3.jpeg"
  }
]

mosquita_muerta_photos_info.each do |photo_info|
  mosquita_muerta.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
mosquita_muerta.save!


nieto_senetiner = WineExperience.create!(title: "Bodega Nieto Senetiner", description: "Las labores de todo un año se ponen a punto, para ofrecerte una experiencia única e irrepetible.", date: Date.new(2021, 4, 25, 19), price: 2700, owner: facundo, address: Faker::Address.street_address)

nieto_senetiner_photos_info = [{
  url: "https://ardiaprod.vteximg.com.br/arquivos/ids/186156-1000-1000/Vino-Blanco-Emilia-Nieto-Senetiner-Dulce-Natural-750-ml-_1.jpg?v=637427580177730000",
  filename: "nieto_senetiner_1.jpeg"
  },
  {
  url: "https://www.noticiasd.com/wp-content/uploads/2020/03/73e5647fcb1b-8._DN_SV_FVB_2016-500x1024.png",
  filename: "nieto_senetiner_2.jpeg"
  },
  {
  url: "https://http2.mlstatic.com/D_NQ_NP_615619-MLA40741799516_022020-V.jpg",
  filename: "nieto_senetiner_3.jpeg"
  }
]

nieto_senetiner_photos_info.each do |photo_info|
  nieto_senetiner.photos.attach(io: open(photo_info[:url]), filename: photo_info[:filename], content_type: "image/jpeg")
end
nieto_senetiner.save!

puts "Creando tres bookings"
Booking.create!(client: natalia, wine_experience: rutini)
Booking.create!(client: facundo, wine_experience: francia)
Booking.create!(client: camilo, wine_experience: cafayate)

puts "Seeds creadas"
