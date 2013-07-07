require 'json'
require 'ym4r'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'rake'
require 'pry'
require 'sunlight'
require 'pg'

Sunlight::Base.api_key='035fbbb591aa4fdba299e64c0d9e867c'

set :database, {adapter: 'postgresql',
                databse: 'politicians',
                host: 'localhost'}

class Politician < ActiveRecord::Base
end

get '/' do
  @favorites = Politician.all

 erb :form
end

get '/politicians' do
  @politicians = Sunlight::Legislator.all_in_zipcode(params[:zip])
  erb :politicians
end

# post '/politicians' do
#   @zip = params[:zip]
#   redirect to ("/politicians/#{@zip}")
# end

post '/post_politicians' do
  favorite = params[:post_politician]
  info = Sunlight::Legislator.all_where(:bioguide_id => favorite).first
  Politician.create(:firstname => info.firstname, :lastname => info.lastname, :party => info.party, :state => info.state, :twitter_id => info.twitter_id, :in_office => info.in_office, :votesmart_id => info.votesmart_id)
  redirect to "/"
end






















