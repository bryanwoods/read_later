require 'rubygems'
require 'sinatra'
require 'read_later'

get '/' do
  read_later = ReadLater.new

  # Application variables
  # URL (Required):
  # h post_path(@post)
  url = "http://writing.bryanwoods4e.com/1-poor-poor-child"

  # Title (Optional, but preferred):
  # h @post.title
  title = "Poor, poor child. You have no idea."

  # Can customize the following optional iframe parameters:
  # Border, scrolling, width, height, transparency,
  # And frameborder. For example:
  read_later.height = 100
  read_later.transparency = false

  # Create an instance variable for button with required
  # URL and optional title arguments 
  @instapaper_button = read_later.instapaper_button(url, title)

  # Tell Sinatra to render button in the view:
  # <%= @instapaper_button %>
  @instapaper_button
end
