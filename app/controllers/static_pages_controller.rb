class StaticPagesController < ApplicationController
  def home
    if current_user.present?
      redirect_to new_prompt_url
    end
  end
end
