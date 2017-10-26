class PokemonController < ApplicationController
  def capture
  	@pokemons=Pokemon.find(params[:id])
  	@pokemons.trainer_id=current_trainer.id
  	@pokemons.save!
  	redirect_to :controller => 'home', :action => 'index'
  end
  def damage
  	@pokemons=Pokemon.find(params[:id])
  	@pokemons.health-=10
  	if @pokemons.health<=0
  		@pokemons.destroy
  	else
  		@pokemons.save!
  	end
  	redirect_to "/trainers/"+current_trainer.id.to_s
  	
  end
  def create
  	@pokemons=Pokemon.new
  	@pokemons.health =100
  	@pokemons.level =1
  	names=params[:pokemon][:name]
  	@pokemons.name = names
  	@pokemons.trainer_id=current_trainer.id
  	if names=="" or Pokemon.exists?(name:names)
  		flash[:error] = @pokemons.errors.full_messages.to_sentence 
  		redirect_to "/new" ,:notice =>"Pokemon name already exists or no name was given"
  	else
  		@pokemons.save!
  		redirect_to "/trainers/"+current_trainer.id.to_s
  	end
  end
  def new
  	@pokemons=Pokemon.new

  end
end