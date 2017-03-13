class Hotspot < ApplicationRecord
  validates :train, :car, :seat, :name, presence: true,
                  length: { minimum: 1 }


end
