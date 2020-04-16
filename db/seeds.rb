require 'faker'

files = %w[lily]

100.times do
  @post = ImagePost.new(username: Faker::Internet.username)
  @post.save
  file = files.sample
  @post.image.attach(io: File.open("./public/images/#{file}.jpg"),
                                  filename: file)
end
