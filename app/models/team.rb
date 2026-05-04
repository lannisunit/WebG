class Team < ApplicationRecord

    has_many :team_members
    has_many :members, through: :team_members

    validate :max_10_members

    def max_10_members
      if members.size > 10
        errors.add(:base, "Team tối đa 10 người")
      end
    end
end
