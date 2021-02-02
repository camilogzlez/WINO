# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "date"

WineExperience.destroy_all
Booking.destroy_all
User.destroy_all

puts "Creando tres owners"
natalia = User.create!(email: "gattinati.ng@gmail.com", password: "Ca145236*")
facundo = User.create!(email: "facundolanus@gmail.com", password: "Ca145236*")
camilo = User.create!(email: "camilogzlez@gmail.com", password: "Ca145236*")

puts "Creando Wine Experiences"

    rutini = WineExperience.create!(
      title: "Bodega Rutini malbec tasting", 
      description: "pruebe los vinos de la bodega ....", 
      date: Date.new(2021, 2, 14), 
      price: 1500, 
      owner: natalia, 
      address: Faker::Address.street_address
    ) 
    rutini.photos.attach(io: ["https://www.google.com/url?sa=i&url=https%3A%2F%2Fcepadevinos.com%2Fproducto%2Frutini-malbec%2F&psig=AOvVaw2MVfbqM6moY1n-2R_7WFhV&ust=1612388952536000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJCS24iXzO4CFQAAAAAdAAAAABAD", "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.la14online.com%2Fbodega%2Frutini-wines%2F&psig=AOvVaw2ezmeT0P6S_O0gNPOOwkvV&ust=1612389005787000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPCU2KGXzO4CFQAAAAAdAAAAABAP"], filename: "#{rutini.title}-#{rutini.user_id}.jpg", content_type: "image/jpeg")
    rutini.save

    francia = WineExperience.create!(
      title: "Vinos del Sur de Francia", description: "Realize un viaje a traves de los vinos ....", date: Date.new(2021, 3, 4), price: 5000, owner: facundo, address: Faker::Address.street_address
    )
    francia.photos.attach(io: ["https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.devinosyvides.com.ar%2Fnota%2F577-el-vino-oficial-del-tour-de-francia-se-llama-bicicleta&psig=AOvVaw1umX8ZaahMdOplur64-8j6&ust=1612389077687000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLjE482XzO4CFQAAAAAdAAAAABAD"],filename: "#{francia.title}-#{francia.user_id}.jpg", content_type: "image/jpeg")
    francia.save

    cafayate = WineExperience.create!(
      title: "Vinos del Cafayate ", description: "Deleitese con vinos de talla mundial ....", date: Date.new(2021, 2, 20), price: 1800, owner: camilo, address: Faker::Address.street_address
      )
    cafayate.photos.attach(io: ["http://www.saltargentina.com.ar/wp-content/uploads/2019/04/artistica-varietal.jpg", "https://http2.mlstatic.com/vino-cafayate-gran-linaje-malbec-750ml-etchart-botella-salta-D_Q_NP_967916-MLA41364962156_042020-F.webp", "https://www.espaciovino.com.ar/media/default/0001/55/thumb_54262_default_medium.jpeg", "https://http2.mlstatic.com/vino-cafayate-rose-rosado-750ml-etchart-salta-bebida-botella-D_Q_NP_940619-MLA41430889026_042020-F.webp"], filename: "#{cafayate.title}-#{cafayate.user_id}.jpg", content_type: "image/jpeg")
    cafayate.save

    fin_del_mundo = WineExperience.create!(
      title: "Bodega Fin del Mundo", description: "Descubrí nuestros vinos: La inmensidad de la Patagonia en todos nuestros vinos.", date: Date.new(2021, 4, 20), price: 5020, owner: camilo, address: Faker::Address.street_address
      )
      fin_del_mundo.photos.attach(["https://www.espaciovino.com.ar/media/default/0001/55/thumb_54322_default_big.jpeg", "https://http2.mlstatic.com/vino-fin-del-mundo-special-blend-750ml-envios-D_Q_NP_784175-MLA42301807436_062020-F.webp", "https://www.espaciovino.com.ar/media/default/0001/55/thumb_54341_default_big.jpeg", "https://vinocular.files.wordpress.com/2016/02/vino-ventus-tinto-bod-del-fin-del-mundo-5593-mla4466815007_062013-o.jpg?w=541&h=329"], filename: "#{fin_del_mundo.title}-#{fin_del_mundo.user_id}.jpg", content_type: "image/jpeg")
      fin_del_mundo.save 
      
    mosquita_muerta = WineExperience.create!(
      title: "Bodega Mosquita Muerta", description: "Blends Premium.", date: Date.new(2021, 2, 27), price: 3700, owner: facundo, address: Faker::Address.street_address
      )
    mosquita_muerta.photos.attach(io: ["https://http2.mlstatic.com/D_NQ_NP_838898-MLA31065849993_062019-O.jpg", "https://http2.mlstatic.com/vino-mosquita-muerta-blend-de-tintas-750ml-envios-D_Q_NP_645659-MLA40355369406_012020-F.webp", "https://cdn.needish.com/prod-boxfish/2b592056-860d-4b88-943e-81ea6cae6d61-grpn/scale/900x600.jpg"], filename: "#{mosquita_muerta.title} -#{mosquita_muerta.user_id}.jpg", content_type: "image/jpeg")
    mosquita_muerta.save
    
    rubino = WineExperience.create!(
      title: "Bodega Familia Rubino", description: "Promoción San Valentin Vinos", date: Date.new(2021, 2, 14), price: 4620, owner: camilo, address: Faker::Address.street_address
     )
     rubino.photos.attach(io: ["https://lh3.googleusercontent.com/proxy/pGc3Is-jbpYCp8ahX7jUKTNP_QZmFTVWPcW4k4-86pLUTBBkMRW_RGvWoDnh7T7L3dtx_LYcnL-gLo4bB93FLGwERsURKUCkpMiQiGDPtPjqeWV6TqC0Uyoihqv0ktfL", "https://www.pasionporelvino.com/pub/media/catalog/product/cache/image/265x265/beff4985b56e3afdbeabfc89641a4582/o/4/o4uf6owtqnazammy25wmfw_pl_375x500.png"], filename: "#{rubino.title} -#{rubino.user_id}.jpg", content_type: "image/jpeg")
     rubino.save
    
    garufa = WineExperience.create!(
      title: "Garufa Wines", description: "Algo distinto, algo especial, algo que este presente en tus momentos de éxito, por eso te hacemos llegar esta cata de gran nivel.", date: Date.new(2021, 3, 25), price: 4800, owner: natalia, address: Faker::Address.street_address
     )
    garufa.photos.attach(io: ["https://3.bp.blogspot.com/-AUfg1EyMKLw/UNKD7GBosVI/AAAAAAAAlPA/si9w4MhRQiE/s1600/GARUFA-potw+(2).jpg"], filename: "#{garufa.title} -#{garufa.user_id}.jpg", content_type: "image/jpeg")
    garufa.save
    
    nieto_senetiner = WineExperience.create!(
      title: "Bodega Nieto Senetiner", description: "Las labores de todo un año se ponen a punto, para ofrecerte una experiencia única e irrepetible.", date: Date.new(2021, 4, 25), price: 2700, owner: facundo, address: Faker::Address.street_address
    )
    nieto_senetiner.photos.attach(io: ["http://d26lpennugtm8s.cloudfront.net/stores/812/913/products/nieto-cabernet-sauvignon-20181-897da06b1c90d390e115524917954526-640-0.jpg", "https://www.noticiasd.com/wp-content/uploads/2020/03/73e5647fcb1b-8._DN_SV_FVB_2016-500x1024.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUqQdUHiG1IgQCi22PSHoKrdrKU1APw86Yw&usqp=CAU"], filename: "#{nieto_senetiner.title} -#{nieto_senetiner.user_id}.jpg", content_type: "image/jpeg")
    nieto_senetiner.save
    
    lopez = WineExperience.create!(
      title: "Bodegas López", description: "Vinos de cosechas únicas, ideales para generar ocasiones inolvidables.", date: Date.new(2021, 4, 17), price: 7500, owner: natalia, address: Faker::Address.street_address
    )
    lopez.photos.attach(io: ["https://bodegaslopez.com.ar/wp-content/uploads/2019/08/slide-nuevas-cosechas-2019-1.jpg", "https://vinomanos.com/wp-content/uploads/2018/12/MONTCHENOT-v.png", "https://i.pinimg.com/originals/fb/38/c9/fb38c9624ca0e441e5b9850bf99faf37.png"], filename: "#{lopez.title} -#{lopez.user_id}.jpg", content_type: "image/jpeg")
    lopez.save


puts "Creando tres bookings"
Booking.create!(client: natalia, wine_experience: rutini)
Booking.create!(client: facundo, wine_experience: francia)
Booking.create!(client: camilo, wine_experience: cafayate)

puts "Seeds creadas"
