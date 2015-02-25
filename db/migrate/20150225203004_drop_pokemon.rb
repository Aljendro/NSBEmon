class DropPokemon < ActiveRecord::Migration
  def change
    drop_table :pokemons
  end
end
