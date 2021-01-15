class CamperActivity < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, inclusion: {in: (0..23), message: "this is not a valid time"}
end
