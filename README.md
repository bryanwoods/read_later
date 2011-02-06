Installation:
=============
    gem install read_later

Here is an example Sinatra application to get you going:
--------------------------------------------------------

    require 'rubygems'
    require 'sinatra'
    require 'read_later'

    before do
      @read_later = ReadLater.new
    end

    get '/instapaper' do
      url   = "http://writing.bryanwoods4e.com/1-poor-poor-child"
      title = "Poor, poor child. You have no idea."

      # See lib/read_later.rb for more Instapaper configuration options 
      @instapaper_button = @read_later.instapaper_button(url, title)
    end

    get '/readability' do
      # Readability's button is pure JavaScript. Nothing fancy here...
      @readability_button = @read_later.readability_button
    end
