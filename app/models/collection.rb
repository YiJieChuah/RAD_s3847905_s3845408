class Collection < ApplicationRecord
    has_many :collection_items
    has_many :items, through: :collection_items
end
