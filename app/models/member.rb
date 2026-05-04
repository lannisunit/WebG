class Member < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :team_members
    has_many :teams, through: :team_members
end
