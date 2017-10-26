class AddHealthToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :health, :int
  end
end
