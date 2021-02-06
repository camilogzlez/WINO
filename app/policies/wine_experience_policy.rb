class WineExperiencePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end 

  def create?
    user.owner
  end

  def show?
    true
  end

  def update?
    user.owner
  end

  def destroy?
    user.owner
  end

end
