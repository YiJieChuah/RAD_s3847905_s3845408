class Item < ApplicationRecord
    has_many :collection_items
    has_many :collections, through: :collection_items
end
