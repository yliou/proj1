class PokemonController < ApplicationController
  def capture
  	@pokemons=Pokemon.find(params[:id])
  	@pokemons.trainer_id=current_trainer.id
  	@pokemons.save!
  	redirect_to :controller => 'home', :action => 'index'
  end
end