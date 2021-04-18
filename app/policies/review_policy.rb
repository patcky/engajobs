class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end

  def update?
    is_owner?
  end

  def show?
    true
  end

  def destroy?
    is_owner?
  end

  def is_owner?
    record.public_profile.user == user || user.admin
  end
end
