class User < ActiveRecord::Base
  has_many :prompts
  has_many :responses, :through => "prompts", :source => "responses"

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.screen_name = auth["info"]["nickname"]
      user.image_url = auth["info"]["image"]
    end
  end

  def short_name
    name_split = self.name.split
    first_name = name_split[0]
    last_initial = name_split[1][0]
    short_name = "#{first_name} #{last_initial}."
    return short_name
  end

  def feedback
    self.responses.pluck(:content)
  end

end
