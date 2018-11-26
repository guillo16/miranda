class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user == current_user)
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
