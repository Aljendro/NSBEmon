class CreateUsersAndPokemons < ActiveRecord::Migration
  def change
    create_table :users_and_pokemons, id: false do |t|
      t.belongs_to :user
      t.belongs_to :pokemon
    end
  end
end
