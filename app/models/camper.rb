class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :activities, through: :camper_activities

    def to_s
        "#{ self.name } (age #{ self.age })"
    end
end
