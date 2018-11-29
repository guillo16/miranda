class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(["user_id = ? or opponent_id = ?", user.id, user.id])
    end
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
