class Skill < ApplicationRecord
  extend FriendlyId
  friendly_id :skill_title, use: :slugged
end
