class Episode < ApplicationRecord
    has_many :ppepisodes
    has_many :people, through: :ppepisodes
    has_many :planets, through: :ppepisodes
end
