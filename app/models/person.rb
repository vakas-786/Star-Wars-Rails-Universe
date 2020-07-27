class Person < ApplicationRecord
    has_many :ppepisodes 
    has_many :planets, through: :ppepisodes
    has_many :episodes, through: :ppepisodes
end
