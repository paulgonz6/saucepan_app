# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Prompt.destroy_all
Response.destroy_all

15.times do
  user = User.create!(  :name          => "#{Faker::Name.first_name} #{Faker::Name.last_name}",
                        :screen_name   => Faker::Internet.user_name,
                        :image_url     => Faker::Avatar.image
                      )

  10.times do
    prompt = Prompt.create!(  :question       => Faker::Lorem.sentence,
                              :user_id        => user.id,
                              :event          => Faker::Address.city,
                              :closing_time   => Faker::Time.backward(6)
                            )

    15.times do
      Response.create!(   :content => Faker::Lorem.paragraph,
                          :prompt_id => prompt.id
                          )
    end
  end
end

users = User.all
prompts = Prompt.all
responses = Response.all

puts "#{users.count} users have been created"
puts "#{prompts.count} prompts have been created"
puts "#{responses.count} responses have been created"
