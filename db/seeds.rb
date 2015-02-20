# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Prompt.destroy_all
10.times do
  prompt = Prompt.create! ( :question       => Faker::new
                            :user_id        => 1
                            :event          =>
                            :closing_time   =>
                          )
  15.times do
    Response.create! (  :content =>
                        :prompt_id => prompt.id
                        )
  end

end

prompts = Prompt.all
responses = Response.all

puts "#{prompts.count} prompts have been created"
puts "#{response.count} responses have been created"
