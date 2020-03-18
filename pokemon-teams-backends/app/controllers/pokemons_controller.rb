class PokemonsController < ApplicationController

    def index
        pokemons = Pokemon.all 
        render json: pokemons
    end

    def show
        pokemon = Pokemon.find(params[:id])
        render json: pokemon
    end

    def create
        name = Faker::Name.first_name
        species = Faker::Games::Pokemon.name
        # byebug
        Pokemon.create(nickname: name, species: species, trainer_id: params["_json"])
    end
end
