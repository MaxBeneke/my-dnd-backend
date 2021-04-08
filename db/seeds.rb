# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Max", password: "123")

character1 = Character.create(user: user1, name: "Clint", level: 1, character_class: "Paladin", armorclass: 15, subclass: "Devotion", speed: "30", strength: 14, dexterity: 12, constitution: 14, intelligence: 8, wisdom: 10, charisma: 16, hp_current: 12, hp_max: 12, weapons: ["Javelin", "Dagger"], spells: [], equipment: ["Shield", "Warhammer"], background: "Acolyte", race: "Halfling", subrace: "Lightfoot", gold: 100, ideals: "I believe there is good in everyone", personality: "Bubbly and kind to everyone", flaws: "Will believe anyone, even bad people", bonds: "My mother, she raised me alone", features: ["Divine Sense, Lay on Hands"], languages: ["Common", "Halfling", "Elvish"])

proficiencies1 = ProficiencyList.create(character: character1, strength: false, dexterity: false, constitution: false, intelligence: false, wisdom: true, charisma: true, acrobatics: false, animal_handling: false, arcana: false, athletics: true, deception: false, history: true, insight: true, intimidation: false, investigation: false, medicine: false, nature: false, perception: false, performance: false, persuasion: false, religion: true, sleight_of_hand: false, stealth: false, survival: true)
