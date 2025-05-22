class MiningType < ApplicationRecord
  has_many :coins, dependent: :destroy
end
