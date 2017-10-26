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
end