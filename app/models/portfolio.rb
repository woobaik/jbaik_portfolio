class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :technologies
end
