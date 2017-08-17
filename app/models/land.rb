class Land < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :city
  belongs_to :citysearch
  belongs_to :user
end
