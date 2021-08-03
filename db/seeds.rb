puts "Clearing old data..."
ArtTag.destroy_all
Art.destroy_all
Like.destroy_all
Tag.destroy_all
User.destroy_all

puts "Seeding users..."

10.times do
    User.create(
        name: Faker::FunnyName.name,
        email: Faker::Internet.email)
end

puts "Seeding Arts"

    Art.create(
            title: "Lady with an Ermine",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Lady_with_an_Ermine_-_Leonardo_da_Vinci_-_Google_Art_Project.jpg/480px-Lady_with_an_Ermine_-_Leonardo_da_Vinci_-_Google_Art_Project.jpg",
            artist_info: "Leonardo da Vinci",
    )
    
    Art.create(
            title: "Mona Lisa",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/600px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg",
            artist_info: "Leonardo da Vinci",
    )

    Art.create(
            title: "Madonna mit der Nelke",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Leonardo_da_Vinci_Madonna_of_the_Carnation.jpg/920px-Leonardo_da_Vinci_Madonna_of_the_Carnation.jpg",
            artist_info: "Leonardo da Vinci",
    )

    Art.create(
            title: "The Starry Night",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/600px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg",
            artist_info: "Vincent van Gogh",
    )

    Art.create(
            title: "Head/Skull of a Skeleton with Burning Cigarette",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg/500px-Vincent_van_Gogh_-_Head_of_a_skeleton_with_a_burning_cigarette_-_Google_Art_Project.jpg",
            artist_info: "Vincent van Gogh",
    )
    Art.create(
            title: "The Bedroom (in Arles)",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Vincent_van_Gogh_-_De_slaapkamer_-_Google_Art_Project.jpg/600px-Vincent_van_Gogh_-_De_slaapkamer_-_Google_Art_Project.jpg",
            artist_info: "Vincent van Gogh",
    )

    Art.create(
            title: "Vase of Flowers",
            img_url: "https://uploads6.wikiart.org/images/georges-seurat/vase-of-flowers-1879.jpg!Large.jpg",
            artist_info: "Georges Seurat",
    )

    Art.create(
            title: "A Sunday on La Grande Jatte",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.jpg/1200px-A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.jpg",
            artist_info: "Georges Seurat",
    )
    Art.create(
            title: "Self-portrait wearing a velvet dress",
            img_url: "https://www.fridakahlo.org/images/paintings/self-portrait-in-a-velvet-dress.jpg",
            artist_info: "Frida Kahlo",
    )
    Art.create(
            title: "Self-portrait with Small Monkey",
            img_url: "https://lh4.ggpht.com/ao7Rqh8V8zaqA0J3KvHSoz84AOvsPHE5rsCqwzw0KddYUxyAbBxz9hIp5i1Y=s1200",
            artist_info: "Frida Kahlo",
    )

    Art.create(
            title: "Best Buddies",
            img_url: "https://assets.phillips.com/image/upload/t_Website_LotDetailMainImage/v1553643140/auctions/NY030119/89_001.jpg",
            artist_info: "Keith Haring",
    )
    Art.create(
            title: "Campbell's Soup I",
            img_url: "https://www.moma.org/media/W1siZiIsIjMxODI0MiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA5MCAtcmVzaXplIDIwMDB4MTQ0MFx1MDAzZSJdXQ.jpg?sha=f1e923ce509ba9e6",
            artist_info: "Andy Warhol",
    )

    Art.create(
            title: "Man from Naples",
            img_url: "https://cms.guggenheim-bilbao.eus/uploads/2012/05/Basquiat-Man-768x387.jpg",
            artist_info: "Jean-Michel Basquiat",
    )
    Art.create(
            title: "The Underwave off Kanagawa",
            img_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/45434/134438/main-image",
            artist_info: "Katsushika Hokusai",
    )
    Art.create(
            title: "Cocorico",
            img_url: "https://arthur.io/img/art/00017344a5ca0863c/theophile-steinlen/cocorico/large/theophile-steinlen--cocorico.jpg",
            artist_info: "Theophile Steinlen",
    )
    Art.create(
            title: "Nighthawks",
            img_url: "https://www.artic.edu/iiif/2/831a05de-d3f6-f4fa-a460-23008dd58dda/full/843,/0/default.jpg",
            artist_info: "Edward Hopper",
    )

    Art.create(
            title: "Winter Harmony",
            img_url: "https://uploads6.wikiart.org/images/john-henry-twachtman/winter-harmony.jpg!Large.jpg",
            artist_info: "John Henry Twachtman",
    )

    Art.create(
            title: "American Gothic",
            img_url: "https://whitneymedia.org/assets/image/820357/large_American_Gothic.jpg",
            artist_info: "Grant Wood",
    )

    Art.create(
            title: "The Ascent of Ethiopia",
            img_url: "http://2.bp.blogspot.com/-oY9c4j1iL3Y/T1uak00yZoI/AAAAAAAAABI/eD4GKUi6Z-0/s1600/Lois+Mailou+Jones+The+Ascent+of+Ethiopia,+1932,+oil+on+canvas_jpg.jpg",
            artist_info: "Lois Mailou Jones",
    )

    Art.create(
            title: "PH-960",
            img_url: "https://luna.clyffordstillmuseum.org/luna/servlet/iiif/CSM~18~18~4264~38894/full/full/0/default.jpg",
            artist_info: "Clyfford Still",
    )

    Art.create(
            title: "The Scream",
            img_url: "https://www.edvardmunch.org/images/paintings/the-scream.jpg",
            artist_info: "Edvard Munch",
    )



puts "Seeding Likes"

20.times do

    Like.create(
        user_id: User.all.sample.id,
        art_id: Art.all.sample.id
    )
end


puts "Seeding Tags"

20.times do

    Tag.create(
        name: Faker::Adjective.positive
    )
end


puts "Seeding ArtTags"

20.times do

    ArtTag.create(
        art_id: Art.all.sample.id,
        tag_id: Tag.all.sample.id
    )
end