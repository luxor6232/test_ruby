class Customer < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :lastName, presence: true
  validates :cellPhone, presence: true
  validates :email, presence: true
  validates :state, presence: true, length:{ minimum: 5}
end
