class ProficiencyListSerializer < ActiveModel::Serializer
  attributes :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :performance, :persuasion, :religion, :sleight_of_hand, :stealth, :survival

end
