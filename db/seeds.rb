puts "Clearing old data..."
ArtTag.destroy_all
Arts.destroy_all
Likes.destroy_all
Tags.destroy_all
Users.destroy_all

puts "Seeding users..."

10.times do
    User.create(
        name: Faker::FunnyName.name,
        email: Faker::Internet.email)
end


puts "Seeding Likes"

20.times do

    Like.create(
        user_id: User.all.sample.id
        art_id: Art.all.sample.id,
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
        art_id: Art.all.sample.id
        tag_id: Tag.all.sample.id
    )
end


puts "Seeding Arts"

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )

    Art.create(
            title: "",
            img_url: "",
            artist_info: "",
            genres: "",
    )
end