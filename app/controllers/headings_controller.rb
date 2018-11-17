class HeadingsController < ApplicationController
  # /headings
  def index
    @headings = Heading.all.sort_by { |i| i.title }
  end
end
