class AddActorIdToCharacter < ActiveRecord::Migration[4.2]
    def change
        add_column :character, :actor_id, :integer
    end
end