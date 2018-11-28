class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
       if user && user.subscribed == true
        scope.all
      end
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
