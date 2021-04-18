class AreaPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    is_admin?
  end

  def update?
    is_admin?
  end

  def show?
    true
  end

  def destroy?
    is_admin?
  end

  def is_admin?
    user.admin
  end
end
