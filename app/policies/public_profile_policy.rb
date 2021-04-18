class PublicProfilePolicy < ApplicationPolicy
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
    record.user == user || user.admin
  end

  def user_public_profiles?
    true
  end
end
