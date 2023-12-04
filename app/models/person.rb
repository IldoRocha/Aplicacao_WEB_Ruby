class Person < ApplicationRecord
    has_many :occurrence, dependent: :destroy

    validates_presence_of :name, :cpf
end
