class Occurrence < ApplicationRecord
    belongs_to :state
    belongs_to :person

    has_many :resource, dependent: :destroy

    validates_presence_of :name, :person, :state, :description, :cobradeCode
end
