class Profile < ApplicationRecord
  validates :username, presence: true
end
