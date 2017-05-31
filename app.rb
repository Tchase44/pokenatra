require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require_relative 'db/connection'
require_relative 'models/pokemon'

get '/pokemon' do
	@the_list = Pokemon.all
	erb :all
end
get '/pokemon/new'do
	erb :add_a_pokemon
end

post '/pokemon' do 
	@new_poke = Pokemon.create(name: params[:name],poke_type: params[:poke_type],cp: params[:cp],img_url: params[:img])
	redirect '/pokemon'
end

delete '/pokemon/:id' do
	@a_pokemon = Pokemon.find_by_id(params[:id])
	@a_pokemon.destroy
	redirect '/pokemon'
end

get '/pokemon/:id'do
	@a_pokemon = Pokemon.find_by_id(params[:id])
	erb :focus
end

get '/pokemon/:id/stats' do
	@target_pokemon = Pokemon.find_by_id(params[:id])

	erb :edit_stats
end

put '/pokemon' do
	@poke_stats = Pokemon.find_by_id(params[:id])
	@poke_stats.attributes = {name: params[:name],poke_type: params[:poke_type],cp: params[:cp],img_url: params[:img]}
	@poke_stats.save
	redirect '/pokemon'
end


