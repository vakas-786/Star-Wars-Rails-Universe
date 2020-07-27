class Ppepisode < ApplicationRecord
    belongs_to :episode 
    belongs_to :person
    belongs_to :planet 
end
