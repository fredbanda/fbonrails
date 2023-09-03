class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :privacy_policy]
  def home
  end

  def about_us
  end

  def privacy_policy
  end
end
