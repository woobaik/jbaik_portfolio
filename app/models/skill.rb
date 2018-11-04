class Skill < ApplicationRecord
  extend FriendlyId
  include Placeholder
  friendly_id :skill_title, use: :slugged

  after_initialize :set_default

  def set_default
    self.badge ||= Placeholder.image_generator(100,100)
  end
end
