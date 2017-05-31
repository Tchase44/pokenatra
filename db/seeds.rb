require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative "../models/trainer"

# Trainer.destroy_all
Trainer.create(name:"Wild",level: 0,profile_img:"http://clipground.com/images/china-grass-clipart-8.jpg")
Trainer.create(name:"Red",level: rand(20),profile_img:"https://vignette3.wikia.nocookie.net/pokemon/images/f/f6/Red_Sun_and_Moon.png/revision/latest?cb=20161028130041")
Trainer.create(name:"Blue",level: rand(20),profile_img:"http://cdn.bulbagarden.net/upload/thumb/b/be/Sun_Moon_Blue.png/165px-Sun_Moon_Blue.png")


Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg",trainer_id: 3)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg",trainer_id: 3)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg",trainer_id: 2)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg",trainer_id: 2)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg",trainer_id: 2)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg",trainer_id: 2)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg",trainer_id: 3)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg",trainer_id: 3)
Pokemon.create(name: "Haunter", cp: rand(800), poke_type: "ghost", img_url: "http://img.pokemondb.net/artwork/haunter.jpg",trainer_id: 0)



