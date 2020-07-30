class Ppepisode < ApplicationRecord
    belongs_to :episode 
    belongs_to :person
    belongs_to :planet 

    
    validates_uniqueness_of :person_id, :scope => :planet_id
    # validates :episode, uniqueness: true
    # validates_uniqueness_of :episode_id, :scope => : 
    validates_uniqueness_of :planet_id, :scope => :episode_id
end
