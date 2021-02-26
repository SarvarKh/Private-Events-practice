class User < ApplicationRecord
    has_many :events, foreign_key: :creator_id
    accepts_nested_attributes_for :events
end
