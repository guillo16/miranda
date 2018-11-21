class VideoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user && user.subscribed == true
        scope.all
      end
    end
  end

  def show?
    user_subscribed?
  end

  private

  def user_subscribed?
    user.subscribed == true
  end
end
