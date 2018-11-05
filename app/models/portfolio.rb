class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attr| attr['name'].blank?}
end
