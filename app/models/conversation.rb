class Conversation < ApplicationRecord
  belongs_to :customer

  validates :comment, presence: true, length:{ minimum: 5}
end
