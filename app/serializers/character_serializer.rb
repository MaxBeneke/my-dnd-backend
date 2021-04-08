class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :class, :armorclass, :subclass, :speed, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hp_current, :hp_max, :weapons, :spells, :equipment, :background, :race, :subrace, :gold, :ideals, :personality, :flaws, :bonds, :features, :languages

  has_one :proficiency_list
end
