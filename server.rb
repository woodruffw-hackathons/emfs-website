#!/usr/bin/env ruby

require 'sinatra'
require 'tilt/erb'

get "/" do
	redirect "/index.html"
end

get "/about" do
	redirect "/about.html"
end

post "/login" do
	@email = params['email']
	@paswd = params['paswd']

	erb :files
end

get "/login" do
	erb :files
end

get "/public/emfs/src/sync/:file" do |file|
	send_file "./public/emfs/src/sync/#{file}", :filename => file
end
