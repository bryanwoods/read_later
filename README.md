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
      url                     = "http://writing.bryanwoods4e.com/1-poor-poor-child"
      title                   = "Poor, poor child. You have no idea."
      read_later.height       = 100
      read_later.transparency = false
      @instapaper_button      = @read_later.instapaper_button(url, title)
    end

    get '/readability' do
      @readability_button = @read_later.readability_button
    end
