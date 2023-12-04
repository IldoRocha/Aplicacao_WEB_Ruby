class Resource < ApplicationRecord
    belongs_to :occurrence

    validates_presence_of :name, :price, :quantity
end
