class JobAlertPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    owner_user_or_admin?
  end

  private
  def owner_user_or_admin?
    record.user == user
    # add some admin when you need to
  end
end
