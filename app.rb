require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/pokemon' do
	@the_list = Pokemon.all.order(:id)
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


get '/trainers' do
	@all_trainers = Trainer.all.order(:name)
	erb :'trainers/trainers'
end

get '/trainers/add' do
	erb :'/trainers/add_trainer'
end

post '/trainers' do
	@new_trainer = Trainer.create(name: params[:name],level: params[:level],profile_img: params[:pro_pic])
	redirect '/trainers'
end

delete '/trainers/:id'do
	@trainer = Trainer.find_by_id(params[:id])
	@trainer.destroy
	redirect '/trainers'
end

get '/trainers/:id/profile' do
	@trainer = Trainer.find_by_id(params[:id])
	@trainer_pokemon = Pokemon.where(trainer_id: @trainer.id)
	erb :'/trainers/profile'
end

get '/trainers/:id/edit' do 
	@trainer_to_edit = Trainer.find_by_id(params[:id])
	erb :'/trainers/edit_trainer'
end

get '/trainers/:id/catch' do
	erb:'trainers/poke_to_trainer'
end

patch '/trainers' do 
	@updated_trainer = Trainer.find_by_id(params[:id])
	@updated_trainer.attributes = {name: params[:name],level: params[:level],profile_img: params[:img]}
	@updated_trainer.save
	redirect '/trainers'
end






