class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @headings = Heading.all.sort_by { |i| i.title }
  end
end
