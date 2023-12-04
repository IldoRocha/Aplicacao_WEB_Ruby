class State < ApplicationRecord
    has_many :occurrence

    validates_presence_of :name
end
