class CharactersController < ApplicationController

    def create
        @character = Character.create(character_params)
        @character.update(languages: params[:languages], skills: params[:skills], proficiencies: params[:proficiencies], traits: params[:traits], equipment: params[:equipment], spells: params[:spells], cantrips: params[:cantrips], features: params[:features])
        if @character.valid?
            render json: @character
        end
    end

    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        render json: @character.user
    end

    def update
        @character = Character.find(params[:id])
        @character.update(character_params)
        @character.update(languages: params[:languages], skills: params[:skills], proficiencies: params[:proficiencies], traits: params[:traits], equipment: params[:equipment], spells: params[:spells], cantrips: params[:cantrips], features: params[:features])
        render json: @character.user
    end
    
    private
    
    def character_params
        params.permit(:user_id, :name, :level, :speed, :armorclass, :subclass, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hp_current, :hp_max, :weapons, :spells, :equipment, :background, :race, :subrace, :gold, :ideals, :flaws, :bonds, :personality, :features, :languages, :character_class, :traits, :cantrips, :skills, :spellcasting_ability, :hit_die, :alignment)
    end
end
