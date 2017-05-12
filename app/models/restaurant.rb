class Restaurant < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true

  belongs_to :rest_category
end
