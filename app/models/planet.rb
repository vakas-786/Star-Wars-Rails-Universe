class Planet < ApplicationRecord
    has_many :ppepisodes
    has_many :people, through: :ppepisodes
    has_many :episodes, through: :ppepisodes
end

